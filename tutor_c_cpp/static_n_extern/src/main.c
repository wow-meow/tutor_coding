#include <stdio.h>

#include "counter.h"

int main(void)
{
    printf("Initial counter value: %d\n", g_count);

    // Use counter directly
    g_count = 42;
    printf("g_count = %d\n", g_count);
    
    // Use through functions
    increment_counter(); // Print counter value
    increment_counter(); // Print counter value

    blob_t buffForCounters; 
    get_counters(&buffForCounters);
    printf("Final values of counters:\n");
    printf("g_count = %d\n", buffForCounters.buff_for_global);
    printf("sg_count = %d\n", buffForCounters.buff_for_static_global);
    printf("sl_count = %d\n", buffForCounters.buff_for_static_local);

    return 0;
}
