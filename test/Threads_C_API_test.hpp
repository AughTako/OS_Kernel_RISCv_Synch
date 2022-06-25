#ifndef XV6_THREADS_C_API_TEST_HPP
#define XV6_THREADS_C_API_TEST_HPP

#include "../h/syscall_c.h"

#include "../h/print.hpp"

bool finishedddddddA = false;
bool finishedddddddB = false;
bool finishedddddddC = false;
bool finishedddddddD = false;

uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workersBodyA(void* arg) {
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("A finished!\n");
    finishedddddddA = true;
}

void workersBodyB(void* arg) {
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("B finished!\n");
    finishedddddddB = true;
    thread_dispatch();
}

void workersBodyC(void* arg) {
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    }

    printString("C: dispatch\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1="); printInteger(t1); printString("\n");

    uint64 result = fibonacci(12);
    printString("C: fibonaci="); printInteger(result); printString("\n");

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    }

    printString("A finished!\n");
    finishedddddddC = true;
    thread_dispatch();
}

void workersBodyD(void* arg) {
    uint8 i = 10;
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    }

    printString("D: dispatch\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacci(16);
    printString("D: fibonaci="); printInteger(result); printString("\n");

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    }

    printString("D finished!\n");
    finishedddddddD = true;
    thread_dispatch();
}


void Threads_C_API_test() {
    thread_t threads[4];
    thread_create(&threads[0], workersBodyA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workersBodyB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workersBodyC, nullptr);
    printString("ThreadC created\n");

    thread_create(&threads[3], workersBodyD, nullptr);
    printString("ThreadD created\n");

    while (!(finishedddddddA && finishedddddddB && finishedddddddC && finishedddddddD)) {
        thread_dispatch();
    }

}

#endif //XV6_THREADS_C_API_TEST_HPP
