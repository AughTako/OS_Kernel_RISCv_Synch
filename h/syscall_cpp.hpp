//
// Created by os on 6/22/22.
//

#ifndef OS_PROJECT_SYSCALL_CPP_HPP
#define OS_PROJECT_SYSCALL_CPP_HPP
#include "../lib/hw.h"
#include "syscall_c.h"

void* operator new(size_t);
void* operator new[](size_t);
void operator delete(void*);
void operator delete[](void*);


class Thread{
public:
    Thread(void (*body)(void*), void* arg);
    virtual ~Thread();
    int start();
    static void dispatch();
    static int sleep(time_t time);
    static void wrapper(void* args);
private:
    thread_t myHandle;
protected:
    Thread();
    virtual void run() {}
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

#endif //OS_PROJECT_SYSCALL_CPP_HPP
