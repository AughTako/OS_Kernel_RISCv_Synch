//
// Created by os on 6/22/22.
//
#include "../h/syscall_cpp.hpp"
#include "../h/Scheduler.hpp"
#include "../h/tcb.hpp"

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

// Threads

Thread::Thread(void (*body)(void *), void *args) {
    thread_create_NOT_STARTED(&myHandle, body, args);
}
Thread::Thread() {
    thread_create_NOT_STARTED(&myHandle, wrapper, this);
}
Thread::~Thread() {
    thread_exit();
}
void Thread::dispatch() { thread_dispatch(); }

void Thread::wrapper(void *args) { ((Thread*) args)->run(); }

int Thread::start() {
    Scheduler::put(myHandle);
    myHandle->setStarted(true);
    return 1;
}


// Semaphores

int Semaphore::signal() {
   return sem_signal(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
Semaphore::~Semaphore() {
    sem_close(myHandle);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}