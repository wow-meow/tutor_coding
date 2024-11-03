//#define RETURN_EXIT_STATUS_VIA_STACK_VARIABLE
//#define RETURN_EXIT_STATUS_VIA_HEAP_VARIABLE

#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h> // sleep, usleep

void *thread_func(void *arg);

int main(void) {
    printf("== Return Thread Exit Status Using pthread_exit(), pthread_join() ==\n\n");

    const int N_threads = 5;
    pthread_t tids[N_threads];

    /**
     * thread attribute struct
     * - schedule policy, schedpol
     *
     * */
    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    //pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);
    //pthread_attr_setschedpolicy(&th_attr, SCHED_RR);
    pthread_attr_setschedpolicy(&th_attr, SCHED_OTHER);

    int th_indexes[N_threads]; // buffers written only once by Main
    for (int i = 0; i < N_threads; ++i) {
        th_indexes[i] = i;
        printf("[Main] Creating Thread %d\n", i);

        /**
         * - pass in the number of Thread ID
         * - return the exit status of thread
         * */
        int errcode = pthread_create(&tids[i], &th_attr, thread_func, &th_indexes[i]);
        if (errcode != 0) {
            //fprintf(stderr, "ERROR: [%d] %s\n", errcode, strerror(errcode));
            //exit(-1);

            /**
             * If the pthread_create() call fails, perror() will print a message like
             * "pthread_create: [Error message corresponding to errno]" to stderr.
             * global variable errno
             **/
            perror("pthread_create");
            return 1;
        }
    } // for

    for (int i = 0; i < N_threads; ++i) {
#if defined(RETURN_EXIT_STATUS_VIA_STACK_VARIABLE) || defined(RETURN_EXIT_STATUS_VIA_HEAP_VARIABLE)
        void *res;
        if (pthread_join(threads[i], &res) != 0) {
            perror("pthread_join");
            return 1;
        }
        printf("[Main] retval %d stored at 0x%p\n", *((int *) res), res);
        free(res);
#else
        /**
         * If we put 'pthread_join()' right after 'pthread_create()' in the for-loop for thread creation,
         * the main thread creates a thread and ALWAYS WAITS until the created thread finishes its operation
         * (thread function). After that, it is allowed to proceed to the creation of the next thread.
         * Apparently, it's NOT we want!
         * Therefore, we must put 'pthread_join()' in another for-loop.
         * */
        if (pthread_join(tids[i], NULL) != 0) {
            perror("pthread_join");
            return 1;
        }
#endif
    }

    /**
     * The main thread terminates and codes after this line will not be reached.
     * But the process is still alive and waits until other threads finish.
     * If pthread_join(thread, &((void *) res)) is called for every thread,
     * there is no need for an additional pthread_exit(NULL) call.
     * */
    pthread_exit(NULL);

    /**
     * codes after pthread_exit() will not be reached.
     * Best practice: comment them out for readibility
     * */
    //exit(EXIT_SUCCESS); // cleans up resources and forcefully terminates the process
    return 0; // terminates the process, unwinds the stack, cleans up local variables
}

// pass in the number of Thread ID
void *thread_func(void *arg) {
    int tidnum = *((int *) arg);

#ifdef RETURN_EXIT_STATUS_VIA_STACK_VARIABLE
    int retval = tidnum * 100;
    printf("[Thread %d] retval: %d\n", tidnum, retval);
    pthread_exit(&retval);
#elifdef RETURN_EXIT_STATUS_VIA_HEAP_VARIABLE
    int *ret = (int *) malloc(sizeof(int));
    *ret = tidnum * 100;
    printf("[Thread %d] returns %d stored at 0x%p\n", tidnum, *ret, ret);
    pthread_exit((void *) ret);
    //return (void *) ret;
#else
    printf("[Thread %d] returns NULL\n", tidnum);
    pthread_exit(NULL);
    //return NULL;
#endif
}
