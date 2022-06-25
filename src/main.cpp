//
// Created by os on 6/22/22.
//
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

uint64 backupSP;
void main(){

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    Riscv::w_stvec((uint64) &Riscv::interruptRoutine);
    MemoryAllocator::init();


    CCB *coroutines[3];

    thread_create(&coroutines[0], nullptr, nullptr);
    CCB::running = coroutines[0];
    //coroutines[0] = CCB::createCoroutine(nullptr);

    thread_create(&coroutines[1], &workerBodyA, nullptr);
    printString("CoroutineA created\n");
    //coroutines[1] = CCB::createCoroutine(&workerBodyA);

    thread_create(&coroutines[2], &workerBodyB, nullptr);
    printString("CoroutineB created\n");
    //coroutines[2] = CCB::createCoroutine(&workerBodyB);

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        thread_dispatch();
    }

    for (auto &coroutine: coroutines)
    {
        delete coroutine;
    }
    printString("Finished\n");

}


//char* a= new char[6];
//*a = 'a';
//*(a+1) = 'b';
//*(a+2) = 'c';
//__putc(*a);
//__putc(*(a+1));
//__putc(*(a+2));
//__putc('\n');
//delete a;
//a = (char*) MemoryAllocator::allocateB(sizeof(char));
//*a = 'd';
//*(a+1) = 'e';
//*(a+2) = 'f';
//__putc(*a);
//__putc(*(a+1));
//__putc(*(a+2));
//__putc('\n');