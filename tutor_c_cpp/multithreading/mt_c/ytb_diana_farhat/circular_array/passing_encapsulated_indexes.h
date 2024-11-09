//
// Created by lh on 11/7/2024.
//

#ifndef PASSING_ENCAPSULATED_INDEXES_H
#define PASSING_ENCAPSULATED_INDEXES_H

#include <stdbool.h>
#include "types.h"

bool isFull_readWriteIndex(const int ArrLen, const int WriteIndex, const int ReadIndex);

bool isEmpty_readWriteIndex(const int ArrLen, const int WriteIndex, const int ReadIndex);

bool isFull_count(const int ArrLen, const int Count);

bool isEmpty_count(const int ArrLen, const int Count);

typedef bool (*isFullEmptyCountFunc_t)(const int ArrLen, const int Count);

typedef bool (*isFullEmptyReadWriteIndexFunc_t)(const int ArrLen, const int WriteIndex, const int ReadIndex);

typedef bool (*isFullEmptyFunc_t)(const int ArrLen, ...);

void *writeToCircular(void *arr, const int ArrLen, int *writeIndex, int *count,
                      const void *dataIn);
void *readFromCircular(void *arr, const int ArrLen, int *readIndex, int *count,
                       void **dataOut);

int test_isFullEmptyReadWriteIndex(isFullEmptyReadWriteIndexFunc_t isFull, isFullEmptyReadWriteIndexFunc_t isEmpty);

int test_isFullEmptyCount(isFullEmptyCountFunc_t isFull, isFullEmptyCountFunc_t isEmpty);

int test_isFullEmpty(isFullEmptyFunc_t isFull, isFullEmptyFunc_t isEmpty);

#endif //PASSING_ENCAPSULATED_INDEXES_H
