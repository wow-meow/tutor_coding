//#define PROBLEM1
//#define PROBLEM2
//#define PROBLEM3
#define PROBLEM1_SOLUTION1
#define USE_PTHREAD_ATTRIBUTE
#define MULTIPASSINARG

#include <stdio.h>
#include <stdlib.h> // exit(-1)
#include <pthread.h>
#include <string.h>
#include <unistd.h> // sleep

typedef struct {
    double x;
    double y;
} Cartesian2DCoord_t;

typedef struct {
    int th_idx; // thread index number
    Cartesian2DCoord_t point;
} blob_t;

void *printThreadId(void *argptr);
void *printCartesian2DCoordinateAndThreadID(void *argptr);

int main(void) {
    printf("\n== Multithreading Tutorial by Youtuber Diana Farhat ==\n\n");

    const int N_threads = 5;
    pthread_t tids[N_threads];
    //pthread_t *tid_arr = malloc(N_threads * sizeof(pthread_t));

    /**
     * use pthread_attribute
     * - ?? SCHED_FIFO does not work
     * */

    pthread_attr_t th_attr; // a set of attributes of the thread
    pthread_attr_init(&th_attr); // initialize it with default attributes
    //pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO); // first-in-first-out
    //pthread_attr_setschedpolicy(&th_attr, SCHED_RR);

    /**
     * create threads, call pthread_create() --> errcode
     * */

    int errnum = 0;

#ifdef PROBLEM1
    printf("\n=== pass-in argument to sub-threads can be modified by main thread ===\n\n");

    /**
     * 'i' gets updated by the main thread in each iteration, so the passed-in arg
     * to each thread gets modified by the main thread
     * */
    for (int i = 0; i < N_threads; ++i) {
        printf("[Main Thread] creating thread %d\n", i);
        errnum = pthread_create(&tid_arr[i], NULL, printThreadId, (void *) &i);
        if (errnum != 0) {
            fprintf(stderr, "ERROR: CANNOT create a thread. Error Code [%d] : %s\n", errnum, strerror(errnum));
            exit(-1);
        }
    }
#endif // PROBLEM1

#ifdef PROBLEM2
    printf("\n=== add a pass-in argument buffer that can be accessed by main thread ===\n\n");

    /**
     *
     * */
    int id_num_thread;
    for (int i = 0; i < N_threads; ++i) {
        id_num_thread = i;
        printf("The main thread is creating thread %d\n", i);
        errnum = pthread_create(&tid_arr[i], NULL, printThreadId, (void *) &id_num_thread);
        if (errnum != 0) {
            fprintf(stderr, "ERROR: CANNOT create a thread. Error Code [%d] : %s\n", errnum, strerror(errnum));
            exit(-1);
        }
    }
#endif // PROBLEM2

#ifdef PROBLEM3
    printf("\n=== for-loop issue ===\n\n");

    /**
     *
     * */
    for (int i = 0, id_num_thread = 0; i < N_threads; ++i) {
        id_num_thread = i;
        printf("[Main Thread] creating thread %d\n", i);
        errnum = pthread_create(&tid_arr[i], NULL, printThreadId, (void *) &id_num_thread);
        if (errnum != 0) {
            fprintf(stderr, "ERROR: CANNOT create a thread. Error Code [%d] : %s\n", errnum, strerror(errnum));
            exit(-1);
        }
    }
#endif // PROBLEM3

#ifdef PROBLEM1_SOLUTION1
    printf("\n=== add a pass-in argument buffer that is written by main thread only once ===\n\n");

    /**
     * store pass-in arguments in variables that can only be written by main thread only once,
     * that is, store and then not-touched
     * */

#ifndef MULTIPASSINARG
    int idx_arr_of_threads[N_threads];
    for (int i = 0; i < N_threads; ++i) {
        idx_arr_of_threads[i] = i;
        printf("[Main Thread] creating thread %d\n", i);
        errnum = pthread_create(&tids[i], &th_attr, printThreadId, (void *) &idx_arr_of_threads[i]);
        if (errnum != 0) {
            fprintf(stderr, "ERROR: CANNOT create a thread. Error Code [%d] : %s\n", errnum, strerror(errnum));
            exit(-1);
        }
    }
#endif

    /**
     * passing multiple arguments in the thread function
     * */

#ifdef MULTIPASSINARG
    blob_t blob_tid_2dpnt_arr[N_threads];
    for (int i = 0; i < N_threads; ++i) {
        blob_tid_2dpnt_arr[i].th_idx = i;
        blob_tid_2dpnt_arr[i].point.x = 3.2 * i;
        blob_tid_2dpnt_arr[i].point.y = 9.9 * i;
        printf("[Main Thread] creating thread %d\n", i);
        errnum = pthread_create(&tids[i], &th_attr, printCartesian2DCoordinateAndThreadID, (void *) &blob_tid_2dpnt_arr[i]);
        if (errnum != 0) {
            fprintf(stderr, "ERROR: CANNOT create a thread. Error Code [%d] : %s\n", errnum, strerror(errnum));
            exit(-1);
        }
    }

#endif // MULTIPASSINARG

#endif // PROBLEM1_SOLUTION1

    /**
     * pthread_exit():
     * wait until all threads finish, cannot be replaced with exit()
     * */
    pthread_exit(NULL);

    return 0;
}

void *printThreadId(void *argptr) {
    int tidnum = *((int *) argptr);
    printf("\nThread %d: printThreadId()\n", tidnum);
    pthread_exit(NULL);
    return NULL;
}

void *printCartesian2DCoordinateAndThreadID(void *argptr) {
    int tidnum = ((blob_t *) argptr)->th_idx;
    double x = ((blob_t *) argptr)->point.x;
    double y = ((blob_t *) argptr)->point.y;
    sleep(1);
    //usleep(88);
    printf("\n[Thread %d] printCartesian2DCoordinate(): (%.2f, %.2f)\n", tidnum, x, y);

    pthread_exit(NULL);
    return NULL;
}
