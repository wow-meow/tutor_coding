#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct {
    int data;
} item_t;

typedef struct {
    int buffer_index;
    int buffer_data;
    int is_write_in_or_read_out; // 1 for write in, 0 for read out, else undefined
} producer_consumer_exit_status_t;

#define BUFFER_SIZE 3
//const int BUFFER_SIZE = 2;
item_t g_buffer[BUFFER_SIZE];
int g_index_in = 0; // write in
int g_index_out = 0; // read out
int g_count = 0;

void *producer(void *arg);

void *consumer(void *arg);

void *producer_arg_ret(void *arg);

void *consumer_arg_ret(void *arg);

void *producer_share_one_buffer_counter(void *arg);

void *consumer_share_one_buffer_counter(void *arg);

int main(void)
{
    printf("\n== Race Conditions: Producer Consumer Problem ==\n");

    pthread_t producer_tid, consumer_tid;
    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    //pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    pthread_create(&producer_tid, &th_attr, producer, NULL);
    //pthread_join(producer_tid, NULL);

    pthread_create(&consumer_tid, &th_attr, consumer, NULL);
    //pthread_join(consumer_tid, NULL);

    //pthread_create(&producer_tid, &th_attr, producer_share_one_buffer_counter, NULL);
    //pthread_create(&consumer_tid, &th_attr, consumer_share_one_buffer_counter, NULL);

    pthread_exit(NULL);
    return 0;
}

void *producer(void *arg)
{
    const int N = BUFFER_SIZE;
    // produce items
    for (int i = 0; i < 2 * N; ++i) {
        int iterWhile = 0;
        while (((g_index_in + 1) % BUFFER_SIZE) == g_index_out) {
            // do nothing, no free buffers
            if (iterWhile == 0) {
                printf("\n[Producer] is waiting (g_index_in: %d, g_index_out: %d)", g_index_in, g_index_out);
            } else if (iterWhile < 4) {
                printf(".");
            } else {
                pthread_exit(NULL);
                //return NULL;
            }
            iterWhile++;
        }

        // e.g., let's assume we're producing integers in sequence
        int produced_data = i;
        g_buffer[g_index_in].data = produced_data;

        printf("\n[Producer] iter %d:\n"
               "{ int %d } written to buffer[%d]\n",
               i, g_buffer[g_index_in].data, g_index_in);

        g_index_in = (g_index_in + 1) % BUFFER_SIZE;

        printf("\n[Producer] iter %d:\n"
               "updated g_index_in:= %d\n",
               i, g_index_in);
    }

    pthread_exit(NULL);
    //return NULL;
}

void *consumer(void *arg)
{
    const int N = BUFFER_SIZE;
    item_t *consumed_item;
    for (int i = 0; i < 2 * N; ++i) {
        // consume an item
        int iterWhile = 0;
        while (g_index_in == g_index_out) {
            // nothing to read, consume, all consumed, virtually an empty buffer
            if (iterWhile == 0) {
                printf("\n--> [Consumer] is waiting (g_index_in = g_index_out = %d)\n", g_index_out);
            } else if (iterWhile < 4) {
                printf(".");
            } else {
                pthread_exit(NULL);
                //return NULL;
            }
            iterWhile++;
        }

        consumed_item = &g_buffer[g_index_out];

        printf("\n--> [Consumer] iter %d:\n"
               "{ int %d } read from buffer[%d]\n",
               i, consumed_item->data, g_index_out);

        g_index_out = (g_index_out + 1) % BUFFER_SIZE;

        printf("\n--> [Consumer] iter %d:\n"
               "updated g_index_out:= %d\n",
               i, g_index_out);

        //pthread_exit((void *) consumed_item);
        //return (void *) consumed_item;
    }

    //void *ret = (void *) malloc(1 * sizeof(int));
    //pthread_exit(ret);
    //return (void *) consumed_item;
    return NULL;
}

void *producer_arg_ret(void *arg)
{
    const int N = 10;
    for (int i = 0; i < N; ++i) {
        // produce an item
        while (((g_index_in + 1) % BUFFER_SIZE) == g_index_out); // do nothing, no free buffers
        // e.g., let's assume we're producing integers in sequence
        int produced_data = 8;
        g_buffer[g_index_in].data = produced_data;
        g_index_in = (g_index_in + 1) % BUFFER_SIZE;

        producer_consumer_exit_status_t *ret = malloc(1 * sizeof(producer_consumer_exit_status_t));
        ret->buffer_index = g_index_in;
        ret->is_write_in_or_read_out = 1;
        ret->buffer_data = produced_data;
        return ((void *) ret);
    }

    return NULL;
}

void *consumer_arg_ret(void *arg)
{
    const int N = 10;
    for (int i = 0; i < N; ++i) {
        // consume an item
        while (g_index_in == g_index_out); // nothing to read, consume, all consumed, virtually an empty buffer
        item_t *consumed_item = &g_buffer[g_index_out];
        g_index_out = (g_index_out + 1) % BUFFER_SIZE;

        //pthread_exit((void *) consumed_item);
        return (void *) consumed_item;
    }

    //void *ret = (void *) malloc(1 * sizeof(int));
    //pthread_exit(ret);
    return NULL;
}

void *producer_share_one_buffer_counter(void *arg)
{
    const int N = BUFFER_SIZE;
    // produce items
    for (int i = 0; i < 3 * N; ++i) {
        while (g_count == BUFFER_SIZE); // do nothing, no free buffers

        // e.g., let's assume we're producing integers in sequence
        int produced_data = i;
        g_buffer[g_index_in].data = produced_data;

        printf("\n[Producer] iter %d:\n"
               "{ int %d } written to g_buffer[%d]\n"
               "g_count: [%d]\n",
               i, g_buffer[g_index_in].data, g_index_in, g_count);

        g_index_in = (g_index_in + 1) % BUFFER_SIZE;
        g_count++;

        printf("\n[Producer] iter %d:\n"
               "updated g_index_in:= %d\n"
               "updated g_count:= %d\n",
               i, g_index_in, g_count);
    }
    return NULL;
}

void *consumer_share_one_buffer_counter(void *arg)
{
    // consume items
    item_t *consumed_item;
    const int N = BUFFER_SIZE;
    for (int i = 0; i < 3 * N; ++i) {
        while (g_count == 0); // nothing to read, consume, all consumed, virtually an empty buffer

        // let's assume we're returning the consumed item
        consumed_item = &g_buffer[g_index_out];

        printf("\n--> [Consumer] iter %d:\n"
               "{ int %d } read from buffer[%d]\n"
               "g_count: [%d]\n",
               i, consumed_item->data, g_index_out, g_count);

        g_index_out = (g_index_out + 1) % BUFFER_SIZE;
        g_count--;

        printf("\n--> [Consumer] iter %d:\n"
               "updated g_index_out:= %d\n"
               "updated g_count:= %d\n",
               i, g_index_out, g_count);

        //pthread_exit((void *) consumed_item);
        return (void *) consumed_item;
    }

    //void *ret = (void *) malloc(1 * sizeof(int));
    //pthread_exit(ret);
    return NULL;
}