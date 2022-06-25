//
// Created by os on 6/22/22.
//

#ifndef OS_PROJECT_SYSCALL_C_H
#define OS_PROJECT_SYSCALL_C_H
#include "../lib/hw.h"

void* mem_alloc(size_t);
void mem_free(void*);

class CCB;

typedef CCB _thread;
typedef _thread* thread_t;

int thread_create(
        thread_t* handle,
        void(*start_routine)(void*),
        void* args
        );
int thread_create_NOT_STARTED(
        thread_t* handle,
        void(*start_routine)(void*),
        void* args
);
int thread_exit();
void thread_dispatch();
#endif //OS_PROJECT_SYSCALL_C_H
