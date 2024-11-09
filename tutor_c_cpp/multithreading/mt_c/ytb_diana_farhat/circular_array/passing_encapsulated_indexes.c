//
// Created by lh on 11/7/2024.
//

#include "passing_encapsulated_indexes.h"
#include <stdio.h>
#include <math.h>

// Check if the circular array is empty
bool isEmpty_readWriteIndex(const int ArrLen, const int WriteIndex, const int ReadIndex)
{ return WriteIndex == ReadIndex; }

// Check if the circular array is empty
bool isEmpty_count(const int ArrLen, const int Count) { return Count == 0; }

// Check if the circular array is full by comparing read and write indexes
/**
 * - the actual capacity of the circular array is ArrLen - 1,
 * - storage space wasted: ( 1 * sizeof(arr[0]) )
 *
 * @return {bool}
 */
bool isFull_readWriteIndex(const int ArrLen, const int WriteIndex, const int ReadIndex)
{ return (WriteIndex + 1) % ArrLen == ReadIndex; }

/**
 * - the actual capacity of the circular array is exactly ArrLen as expected,
 * - no storage space wasted
 *
 * @return {bool}
 */
bool isFull_count(const int ArrLen, const int Count) { return (Count == ArrLen); }

// Write a value to the circular array
void *writeToCircular(void *arr, const int ArrLen, int *writeIndex, int *count,
                      const void *dataIn)
{
    PowerNotation *targetArray = arr;
    PowerNotation *target = &targetArray[*writeIndex];
    *target = *((PowerNotation *) dataIn); // copy assignment of struct type
    target->value_in_decimal = target->coefficient * pow(target->base, target->exponent);
    printf("\nwrite: [%d] %.2f stored at 0x%p\n", *writeIndex, target->value_in_decimal, target);
    *writeIndex = (*writeIndex + 1) % ArrLen; // update index
    printf("update: g_idx_in <- %d\n", *writeIndex);
    *count += 1;
    return NULL;
}

// Read a value from the circular array
void *readFromCircular(void *arr, const int ArrLen, int *readIndex, int *count,
                       void **dataOut)
{
    PowerNotation *targetArray = arr;
    PowerNotation *target = &targetArray[*readIndex];
    printf("\nread: [%d] %.2f stored at 0x%p\n", *readIndex, target->value_in_decimal, target);
    *dataOut = (void *) target;
    *readIndex = (*readIndex + 1) % ArrLen;
    printf("update: g_idx_out <- %d\n", *readIndex);
    *count -= 1;
    return (void *) target;
}

int test_isFullEmptyCount(isFullEmptyCountFunc_t isFull, isFullEmptyCountFunc_t isEmpty)
{
    const int ArrLen = 3;
    PowerNotation arr[ArrLen];
    int readIndex = 0;
    int writeIndex = 0;
    int count = 0;

    // Write some values to the circular array
    for (int i = 0; i < 2 * ArrLen; i++) {
        if (!isFull(ArrLen, count)) {
            PowerNotation value = { i, 10, i, 0};
            writeToCircular((void *) arr, ArrLen, &writeIndex, &count, &value);
        }
        else {
            printf("\n--> Buffer full, count = %d\n", count);
            break;
        }
    }

    // Read and print values from the circular array
    while (1) {
        if (!isEmpty(ArrLen, count)) {
            void *dataOut = NULL;
            PowerNotation *value_1 = NULL;
            value_1 = readFromCircular(arr, ArrLen, &readIndex, &count, &dataOut);
            printf("Method 1: value read out and stored at 0x%p, its value in decimal: %.2f\n",
                value_1, value_1->value_in_decimal);
            PowerNotation *value_2 = dataOut;
            printf("Method 2: value read out and stored at 0x%p, its value in decimal: %.2f\n",
                value_2, value_2->value_in_decimal);
        } else {
            printf("\n--> Buffer empty, count = %d\n", count);
            break;
        }
    }

    return 0;
}
