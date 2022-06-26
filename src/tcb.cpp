//
// Created by os on 6/24/22.
//
#include "../h/tcb.hpp"
#include "../h/Riscv.hpp"

CCB *CCB::running = nullptr;

CCB *CCB::createCoroutine(Body body, void* args)
{
    return new CCB(body, args);
}

void CCB::yield()
{
    Riscv::pushRegisters();

    CCB::dispatch();

    Riscv::popRegisters();
}

void CCB::dispatch()
{
    CCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    thread_dispatch();
}