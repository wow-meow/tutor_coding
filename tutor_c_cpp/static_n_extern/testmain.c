#include <stdio.h>

// Declare the external variable (defined in create_counter.c)
extern int g_count;
extern int sg_count; // err??

// Declare external functions
extern void increment_counter(void);
extern int get_counter(void);

int main(void) 
{
    printf("Initial counter value: %d\n", g_count);
    
    // Use counter directly
    g_count = 42;
    printf("Counter set to: %d\n", g_count);
    
    // Use through functions
    increment_counter();  // Will print counter value
    increment_counter();  // Will print counter value
    
    printf("Final counter value: %d\n", get_counter());
    
    return 0;
}
