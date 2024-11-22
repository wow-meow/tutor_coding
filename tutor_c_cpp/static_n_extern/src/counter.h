#ifndef COUNTER_H
#define COUNTER_H

// Declare the external variable (defined in create_counter.c)
extern int g_count;

typedef struct Blob
{
    int buff_for_global;
    int buff_for_static_global;
    int buff_for_static_local;
} blob_t;

void increment_counter(void);
void get_counters(blob_t *buff);

#endif // COUNTER_H