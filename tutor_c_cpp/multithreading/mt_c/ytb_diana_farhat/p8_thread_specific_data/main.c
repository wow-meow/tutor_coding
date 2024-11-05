#include <stdio.h>
#include <stdlib.h> // malloc, free
#include <pthread.h> // POSIX Thread Library
#include <unistd.h> // usleep, sleep
#include <string.h> // strlen, strcpy, strerror
#include <time.h>

#define N_THREADS 5

//__thread int tl_counter = 0;
thread_local int tl_counter = 0;
int g_counter; // global variable
int g_counters[N_THREADS];


void *printHello_thfunc(void *arg);

int main(void)
{
    printf("== Thread-Specific Data ==\n\n");

    static int s_counter = 42;

    pthread_t tids[N_THREADS];
    int err;

    int th_indexes[N_THREADS] = {};
    for (int i = 0; i < N_THREADS; ++i) 
    {
        th_indexes[i] = i;
        err = pthread_create(&tids[i], NULL, printHello_thfunc, &th_indexes[i]);
        if (err != 0)
        {
            fprintf(stderr, "errcode %d : %s\n", err, strerror(err));
            return 1;
        }
    }

    void *rets[N_THREADS];

    for (int i = 0; i < N_THREADS; ++i) 
    {
        err = pthread_join(tids[i], &rets[i]);
        if (err != 0) 
        {
            fprintf(stderr, "errcode %d : %s\n", err, strerror(err));
            return 1;
        }
    }

    int sum_g_counters = 0;
    for (int i = 0; i < N_THREADS; ++i)
    {
        sum_g_counters += g_counters[i];
    }

    printf("[Main Thread] tl_counter: %d\n", tl_counter); // deallocated when a thread finishes
    printf("[Main Thread] s_counter: %d\n", s_counter); // within two distinct scopes
    printf("[Main Thread] g_counter: %d\n", g_counter);
    printf("[Main Thread] sum_g_counters: %d\n", sum_g_counters);

    pthread_exit(NULL);
    return 0;
}

void *printHello_thfunc(void *arg)
{
    int th_index = *((int *) arg);
    static int s_counter;

    printf("[Thread %d] before update :\n" 
           "tl_counter: %d\n"
           "s_counter: %d\n"
           "g_counter: %d\n"
           "g_counters[%d]: %d\n",
           th_index, tl_counter, s_counter, g_counter, 
           th_index, g_counters[th_index]); // <--

    tl_counter += 10;
    s_counter += 10;
    g_counter += 10;
    g_counters[th_index] += 10;

    printf("[Thread %d] after update :\n" 
           "tl_counter: %d\n"
           "s_counter: %d\n"
           "g_counter: %d\n"
           "g_counters[%d]: %d\n",
           th_index, tl_counter, s_counter, g_counter, 
           th_index, g_counters[th_index]); // <--

    printf("\n");

    usleep(1000); // sleep 1 millisec
    pthread_exit(NULL);
}

