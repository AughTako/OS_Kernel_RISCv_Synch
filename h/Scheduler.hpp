//
// Created by os on 6/23/22.
//

#ifndef OS_PROJECT_SCHEDULER_HPP
#define OS_PROJECT_SCHEDULER_HPP

#include "List.hpp"

class CCB;

class Scheduler
{
private:
    static List<CCB> readyCoroutineQueue;

public:
    static CCB *get();

    static void put(CCB *ccb);

};

#endif //OS_PROJECT_SCHEDULER_HPP
