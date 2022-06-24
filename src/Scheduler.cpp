//
// Created by os on 6/23/22.
//
#include "../h/Scheduler.hpp"

List<CCB> Scheduler::readyCoroutineQueue;

CCB *Scheduler::get()
{
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
}