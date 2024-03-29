//
// Created by os on 6/24/22.
//

#ifndef PROJECT_V33333333333_CCB_HPP
#define PROJECT_V33333333333_CCB_HPP
#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "syscall_c.h"
#include "MemoryAllocator.hpp"
#include "Riscv.hpp"

// Coroutine Control Block
class CCB
{
public:
    ~CCB() { delete[] stack; }
    void* operator new(size_t size) {
        return MemoryAllocator::allocateB(size);
    }
    void operator delete(void* address) {
        MemoryAllocator::free(address);
    }

    bool isFinished() const { return finished; }
    bool isBlocked() const { return blocked; }
    void setFinished(bool value) { finished = value;}
    void setBlocked(bool value) { blocked = value; }
    void setStarted(bool value) { started = value; }
    bool getFinished() {return finished;}
    using Body = void (*)(void*);
    static CCB *createCoroutine(Body body, void* args);
    static void yield();
    static void dispatch();
    static void threadWrapper();

    static CCB *running;

private:
    explicit CCB(Body body, void* arg) :
            body(body),
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
            args(arg),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            started(false)
    {}

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    void* args;
    Context context;
    bool finished;
    bool blocked;
    bool started;
    static void contextSwitch(Context *oldContext, Context *runningContext);

    static uint64 constexpr STACK_SIZE = 1024;
};
#endif //PROJECT_V33333333333_CCB_HPP
