//
// Created by os on 4/23/22.
//

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::fmem_head = nullptr;
bool MemoryAllocator::flag = false;


void *MemoryAllocator::allocateB(size_t size) {
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    return allocate(numOfBlocks);
}

void* MemoryAllocator::allocate(size_t numOfBlocks) {
    if (!flag){
        fmem_head = (BlockHeader*) HEAP_START_ADDR;
        fmem_head->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
        fmem_head->prev = fmem_head->next = nullptr;
        flag = true;
    }
    if (fmem_head == nullptr) return nullptr;
    BlockHeader* blk = nullptr;
    for (BlockHeader* current = fmem_head; current; current = current->next)
        if ((!blk && current->size >= numOfBlocks)) {
            blk = current;
            break;
        }
    if (!blk) return nullptr;
    size_t remainingNumOfBlocks = blk->size - numOfBlocks;
    if (remainingNumOfBlocks > 0) {
        blk->size = numOfBlocks;
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + numOfBlocks*MEM_BLOCK_SIZE);
        if (blk->next) blk->next->prev = newBlk;
        if (blk->prev) blk->prev->next = newBlk;
        else fmem_head = newBlk;
        newBlk->next = blk->next;
        newBlk->prev = blk->prev;
        newBlk->size = remainingNumOfBlocks;
    }
    else {
        if (blk->next) blk->next->prev = blk->prev;
        if (blk->prev) blk->prev->next = blk->next;
        else fmem_head = blk->next;
    }
    blk->next = nullptr;
    blk->prev = nullptr;
    return (char*)blk + sizeof(BlockHeader);
}

int MemoryAllocator::free(void* addr) {
    if (addr == nullptr) return 0;
    BlockHeader* newBlk = (BlockHeader*) ((char*)addr - sizeof(BlockHeader));
    if (newBlk < fmem_head) {
        newBlk->next = fmem_head;
        fmem_head->prev = newBlk;
        newBlk->prev = nullptr;
        fmem_head = newBlk;
    }
    else if (fmem_head == nullptr){
        fmem_head = newBlk;
        newBlk->next = newBlk->prev = nullptr;
        return 0;
    }
    else {
        BlockHeader* blk = fmem_head, *prev = nullptr;
        while(blk && blk < newBlk){
            prev = blk;
            blk = blk->next;
        }
        newBlk->next = blk;
        if (blk) blk->prev = newBlk;
        newBlk->prev = prev;
        prev->next = newBlk;
    }
    tryToJoin(newBlk);
    tryToJoin(newBlk->prev);
    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader * blk) {
    if (!blk) return;
    if (blk->next && (char*)blk + blk->size * MEM_BLOCK_SIZE == (char*)blk->next){
        BlockHeader* nextBlk = blk->next;
        blk->next = nextBlk->next;
        if (blk->next) blk->next->prev = blk;
        blk->size += nextBlk->size;
    }
}