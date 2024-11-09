//
// Created by lh on 11/7/2024.
//

#include "using_global_indexes.h"
#include "types.h"
#include <stdio.h>
#include <math.h>

#define BUFFER_SIZE 3
PowerNotation g_buffer[BUFFER_SIZE];
//int g_capacity = BUFFER_SIZE - 1; //

int g_writeIndex = 0 % BUFFER_SIZE; // ensure index less than buffer size
int g_readIndex = 0 % BUFFER_SIZE;
int g_count = 0;

// Check if the circular array is empty
bool isEmpty_globalReadWriteIndex(void) { return g_writeIndex == g_readIndex; }

// Check if the circular array is empty
bool isEmpty_globalCount(void) { return g_count == 0; }

// Check if the circular array is full by comparing read and write indexes

/**
 * - the actual capacity of the buffer is BUFFER_SIZE - 1,
 * - storage space wasted: ( 1 * sizeof(g_buffer[0]) )
 *
 * @return {bool}
 */
bool isFull_globalReadWriteIndex(void) { return (g_writeIndex + 1) % BUFFER_SIZE == g_readIndex; }

/**
 * - the actual capacity of the buffer is exactly BUFFER_SIZE as expected,
 * - no storage space wasted
 *
 * @return {bool}
 */
bool isFull_globalCount(void) { return (g_count == BUFFER_SIZE); }

// Write a value to the circular array
void *writeToCircular_global(const void *dataIn)
{
    PowerNotation *target = &g_buffer[g_writeIndex];
    *target = *((PowerNotation *) dataIn); // copy assignment of struct type
    target->value_in_decimal = target->coefficient * pow(target->base, target->exponent);
    printf("\nwrite: [%d] %.2f\n", g_writeIndex, target->value_in_decimal);
    g_writeIndex = (g_writeIndex + 1) % BUFFER_SIZE; // update index
    printf("update: g_idx_in <- %d\n", g_writeIndex);
    g_count++;
    return NULL;
}

// Read a value from the circular array
void *readFromCircular_global(void *dataOut)
{
    dataOut = (void *) &g_buffer[g_readIndex];
    printf("\nread: [%d] %.2f\n", g_readIndex, ((PowerNotation *) dataOut)->value_in_decimal);
    g_readIndex = (g_readIndex + 1) % BUFFER_SIZE;
    printf("update: g_idx_out <- %d\n", g_readIndex);
    g_count--;
    return NULL;
}

int test_isFullEmpty_global(isFullEmptyGlobalFunc_t isFull, isFullEmptyGlobalFunc_t isEmpty)
{
    // reset global variables, like indexes, count, etc.
    g_readIndex = 0;
    g_writeIndex = 0;
    g_count = 0;

    // Write some values to the circular array
    for (int i = 0; i < 2 * BUFFER_SIZE; i++) {
        if (!isFull()) {
            PowerNotation num = { i, 10, i, 0};
            writeToCircular_global(&num);
        }
        else {
            printf("\n--> Buffer full\n");
            break;
        }
    }

    // Read and print values from the circular array
    while (1) {
        if (!isEmpty()) {
            PowerNotation value;
            readFromCircular_global(&value);
            printf("value read out and stored at 0x%p\n", &value);
        } else {
            printf("\n--> Buffer empty\n");
            break;
        }
    }

    return 0;
}
