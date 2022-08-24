//
// Created by os on 6/22/22.
//
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"
#include "../h/syscall_c.h"
void userMain();
uint64 backupSP;

void main(){

    //Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    Riscv::w_stvec((uint64) &Riscv::interruptRoutine);
    thread_create(&CCB::running, nullptr, nullptr);
    userMain();
    printString("Vraceno\n");
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