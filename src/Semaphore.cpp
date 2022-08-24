//
// Created by os on 6/26/22.
//
#include "../h/Semaphore.hpp"

CCB *Semaphore_sys::get(){
    return Semaphore_sys::blockedQueue.removeFirst();
}

void Semaphore_sys::put(CCB *ccb){
    Semaphore_sys::blockedQueue.addLast(ccb);
}
void Semaphore_sys::block() {
    put(CCB::running);
    CCB::running->setBlocked(true);
    CCB::dispatch();
}

void Semaphore_sys::unblock() {
    CCB* thread = blockedQueue.removeFirst();
    thread->setBlocked(false);
    Scheduler::put(thread);
}

void Semaphore_sys::signal() {
    if(++val <= 0) unblock();
}

void Semaphore_sys::wait() {
    if(--val < 0) block();
}

sem_t Semaphore_sys::createSemaphore(unsigned int init) {
    return new Semaphore_sys(init);
}
