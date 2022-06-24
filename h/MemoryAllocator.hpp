//
// Created by os on 4/23/22.
//

#ifndef MEMORYALLOCATOR_H
#define MEMORYALLOCATOR_H

#include "../lib/hw.h"

struct BlockHeader {
    size_t size;
    BlockHeader *next, *prev;
};

class MemoryAllocator {
    static BlockHeader *fmem_head;

    MemoryAllocator() = delete;

public:
    static void init();

    static void *allocate(size_t);
    static void *allocateB(size_t);
    static int free(void *);
    static void joinUpper(BlockHeader *);
};

#endif //MEMORYALLOCATOR_H
