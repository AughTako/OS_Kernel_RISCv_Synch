#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/Semaphore.hpp"

#define ECALL_USER 0x0000000000000008UL
#define ECALL_SUPERVISOR 0x0000000000000009UL
#define INTR_TIMER 0x8000000000000001UL

#define MEM_ALLOC 0x01
#define MEM_FREE 0x02
#define THREAD_CREATE 0x11
#define THREAD_EXIT 0x12
#define THREAD_DISPATCH 0x13
#define SEM_OPEN 0x21
#define SEM_CLOSE 0x22
#define SEM_WAIT 0x23
#define SEM_SIGNAL 0x24
#define THREAD_CREATE_NOSTART 0x14

extern uint64 backupSP;


void Riscv::popSppSpie()
{
    ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("csrc sip, 0x02");
    __asm__ volatile ("sret");
}

void Riscv::interruptHandler() {
    uint64 scause = Riscv::r_scause();
    if (scause == INTR_TIMER)
    {
        //__putc('T');
        // ccb::timeSliceCounter++;
        // if (ccb::timeSliceCounter >= ccb::running->getTimeSlice())
        // {
        //     uint64 sepc = r_sepc();
        //     uint64 sstatus = r_sstatus();
        //     ccb::timeSliceCounter = 0;
        //     ccb::dispatch();
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
        mc_sip(SIP_SSIP);
    }
    else if(scause == ECALL_USER || scause == ECALL_SUPERVISOR){
        uint64 intrId;
        __asm__ volatile("mv %0, a0" : "=r" (intrId));
        if(intrId == MEM_ALLOC){
            uint64 numBlocks = 0;
            asm ("mv %0, a1" : "=r" (numBlocks));
            MemoryAllocator::allocate(numBlocks);
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == MEM_FREE){
            void* address = nullptr;
            __asm__ volatile("mv %0, a1" : "=r" (address));
            MemoryAllocator::free(address);
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == THREAD_CREATE_NOSTART){
            CCB** handle;
            CCB::Body body;
            void* args;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            __asm__ volatile ("mv %0, a2" : "=r" (body));
            __asm__ volatile ("ld a3, 0x68(%0)" : : "r" (backupSP));
            __asm__ volatile ("mv %0, a3" : "=r" (args));
            *handle = CCB::createCoroutine(body, args);
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == THREAD_CREATE){
            CCB** handle;
            CCB::Body body;
            void* args;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            __asm__ volatile ("mv %0, a2" : "=r" (body));
            __asm__ volatile ("ld a3, 0x68(%0)" : : "r" (backupSP));
            __asm__ volatile ("mv %0, a3" : "=r" (args));
            *handle = CCB::createCoroutine(body, args);
            Scheduler::put(*handle);
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == THREAD_DISPATCH) {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            CCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if(intrId == THREAD_EXIT){
            CCB::running->setFinished(true);
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == SEM_OPEN) {
            Semaphore_sys **handle;
            unsigned init;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            __asm__ volatile ("mv %0, a2" : "=r" (init));
            *handle = Semaphore_sys::createSemaphore(init);
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == SEM_CLOSE) {
            Semaphore_sys *handle;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            delete handle;
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == SEM_SIGNAL) {
            Semaphore_sys *handle;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            handle->signal();
            w_sepc(r_sepc() + 4);
        }
        else if(intrId == SEM_WAIT) {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            Semaphore_sys *handle;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            handle->wait();
            w_sepc(sepc);
            w_sstatus(sstatus);
        }

    }
    else if (scause == 0x8000000000000009UL) {
        console_handler();
    }
    //else {
    //    printString("Error ");
    //    printInteger(r_scause());
    //    printString("\n");
    //}
    console_handler();
}