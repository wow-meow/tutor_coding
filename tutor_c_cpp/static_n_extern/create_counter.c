/**
 * @file create_counter.c
 * @brief Defines a global counter variable and functions to manipulate it
 */

#include <stdio.h>

// Global counter variable definition
int g_count = 0; // initialized explicitly, goes to Data segment
static int sg_count; // BSS, implicitly init to zero 

typedef struct Blob {
    int buff_for_global;
    int buff_for_static_global;
    int buff_for_static_local;
} blob_t; 

blot_t buffForVars; // global

// Function to increment counter
void increment_counter(void) {
    int s_count = 0;  // initialized explicitly, goes to Data segment
    g_count++;
    sg_count++;
    s_count++;
    printf("counters incremented:\n" 
        "g_count=%d, sg_count=%d, s_count=%d\n", g_count, sg_count, s_count);
}

// Function to get current counter value
int get_counter(void) {
    return g_count;
}
