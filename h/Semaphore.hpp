//
// Created by os on 6/26/22.
//

#ifndef SYNCH_WORKING_SEMAPHORE_HPP
#define SYNCH_WORKING_SEMAPHORE_HPP
#include "List.hpp"
#include "tcb.hpp"
class Semaphore {
public:
    Semaphore(unsigned init = 1): val(init) {}
    void* operator new(size_t size) {
        return MemoryAllocator::allocateB(size);
    }
    void operator delete(void* address) {
        MemoryAllocator::free(address);
    }

    void wait();
    void signal();
    int value() const { return val; }
    CCB *get();
    void put(CCB *ccb);
    static sem_t createSemaphore(unsigned init);
protected:
    void block();
    void unblock();

private:
    int val;
    sem_t handle;
    List<CCB> blockedQueue;
};
#endif //SYNCH_WORKING_SEMAPHORE_HPP
