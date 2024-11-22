#include <stdio.h>

#include "counter.h"

int main(void)
{
    printf("Initial counter value: %d\n", g_count);

    // Use counter directly
    g_count = 42;
    printf("Counter set to: %d\n", g_count);

    // Use through functions
    increment_counter(); // Will print counter value
    increment_counter(); // Will print counter value

    printf("Final counter value: %d\n", get_counter());

    return 0;
}
