//
// Created by os on 6/26/22.
//
#include "../h/Semaphore.hpp"

CCB *Semaphore::get(){
    CCB* thread = Semaphore::blockedQueue.removeFirst();
    return thread;
}

void Semaphore::put(CCB *ccb){
    Semaphore::blockedQueue.addLast(ccb);
}
void Semaphore::block() {
    put(CCB::running);
    CCB::running->setBlocked(true);
    CCB::dispatch();
}

void Semaphore::unblock() {
    CCB* thread = blockedQueue.removeFirst();
    thread->setBlocked(false);
    Scheduler::put(thread);
}

void Semaphore::signal() {
    if(++val <= 0) unblock();
}

void Semaphore::wait() {
    if(--val <= 0) block();
}