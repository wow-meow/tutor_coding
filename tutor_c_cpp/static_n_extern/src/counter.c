/**
 * @file counter.c
 * @brief Defines a global counter variable and functions to manipulate it
 */

#include "counter.h"
#include <stdio.h>

// Global counter variable definition
int g_count; // BSS, implicitly init to zero
static int sg_count = 0; // Data segment, initialized explicitly
static int buff_for_static_local; // BSS, implicitly init to zero

// static struct, uninitialized, goes to BSS
// only visible within this file
//static blob_t s_buffForCounters; 

// Function to increment counter
void increment_counter(void)
{
    static int sl_count = 0; // initialized explicitly, Data segment
    g_count++;
    sg_count += 2;
    sl_count += 3;
    printf("counters incremented:\n"
           "g_count = %d, sg_count = %d, sl_count = %d\n",
           g_count, sg_count, sl_count);

    // store local variable in a static buffer
    buff_for_static_local = sl_count;
}

// Function to get current counter value
void get_counters(blob_t *buff)
{
    buff->buff_for_global = g_count;
    buff->buff_for_static_global = sg_count;
    buff->buff_for_static_local = buff_for_static_local;
}
