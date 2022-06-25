//
// Created by os on 6/22/22.
//
#include "../h/syscall_c.h"
#include "../h/Scheduler.hpp"
#include "../h/tcb.hpp"

/* =========================================================================================================
 * This file contains the system calls to the riscv.cpp file that handles the codes of the specific C calls.
 * =========================================================================================================
 * */

void* mem_alloc(size_t size){
    if(size <= 0) return nullptr;
    uint64 numBlocks = (size + 24)/MEM_BLOCK_SIZE + ((size + 24) % MEM_BLOCK_SIZE ? 1 : 0);
    void* address = nullptr;
    __asm__ volatile ("mv a1, %0" : : "r" (numBlocks));
    __asm__ volatile ("li a0, 1");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r" (address));
    return address;
}

void mem_free(void* address){
    __asm__ volatile ("mv a1, %0" : : "r" (address));
    __asm__ volatile ("li a0, 0x02");
    __asm__ volatile ("ecall");
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args){
    __asm__ volatile("mv a3, %0" : : "r" (args));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    return 0;
}

void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

int thread_exit(){
    __asm__ volatile ("li a0, 0x12");
    __asm__ volatile ("ecall");
    return 0;
}

int thread_create_NOT_STARTED(thread_t* handle, void (*start_routine)(void*), void* args){
    __asm__ volatile("mv a3, %0" : : "r" (args));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    return 0;
}
