#ifndef COUNTER_H
#define COUNTER_H

// Declare the external variable (defined in create_counter.c)
extern int g_count;

void increment_counter(void);
int get_counter(void);

#endif // COUNTER_H