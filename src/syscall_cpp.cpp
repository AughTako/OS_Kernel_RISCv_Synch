//
// Created by os on 6/22/22.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"

void* operator new(size_t size) {
    return mem_alloc(size);
}
void* operator new[](size_t size) {
    return mem_alloc(size);
}
void operator delete(void* address) {
    mem_free(address);
}
void operator delete[](void* address) {
    mem_free(address);
}

//hread::Thread(void (*body)(void *), void *args) {
//    thread_create_NOT_STARTED(&handle, body, args);
//}

//void Thread::dispatch() { thread_dispatch(); }
//void Thread::wrapper(void *args) { ((Thread*) args)->run(); }