#include <stdio.h>
#include <pthread.h>
//#include <stdlib.h>
#include <stdlib.h>
#include <unistd.h> // sleep

void *myturn(void *arg);
void yourturn(void);
void *histurn(void *arg);

/**
 * @brief The main entry point of the program.
 *
 * This function creates two threads: one that computes a series of values
 * by incrementing an input argument and another that prints a message every second.
 * The main thread executes a function that prints a message every 2 seconds.
 * The main thread waits for both threads to finish before exiting.
 *
 * @return 0 on success.
 */
int main(void)
{
    // Print program title
    printf("== Lecture 2: Pass arguments n get results from threads ==\n\n");

    // Create a thread for the myturn function
    pthread_t tid_my; /**< Thread identifier for the myturn function */
    int v = 5; /**< Initial value to be passed to the myturn function */
    pthread_create(&tid_my, NULL, myturn, &v); // Create the myturn thread

    // Create a thread for the histurn function
    pthread_t tid_his; /**< Thread identifier for the histurn function */
    pthread_create(&tid_his, NULL, histurn, NULL); // Create the histurn thread

    // Execute yourturn function in the main thread
    yourturn();

    int *retval_my; /**< Pointer to store the return value from the myturn thread */
    // Main thread will wait for the non-daemon (myturn) thread to finish
    pthread_join(tid_my, (void *) &retval_my);
    // Print a message indicating the myturn thread is done
    printf("\ntid_my thread's done: v=%d\n", v);

    // Wait for the histurn thread to finish
    pthread_join(tid_his, NULL);

    // print the return value of each thread if necessary
    printf("\nmyturn thread's retval=%d\n", *retval_my);

    // Exit the main thread
    // pthread_exit(NULL);
    return 0;
}

/**
 * @brief A thread that takes turns talking with the main thread.
 *
 * @param arg[in] A pointer to an integer, which is the argument passed to the thread.
 *
 * @return NULL.
 */
void *myturn(void *arg)
{
    int *iptr_argin = (int *) arg;
    int *iptr_retval = (int *) malloc(sizeof(int));
    for (int i = 0; i < 8; ++i) {
        sleep(1);
        printf("My Turn! [%d]: argin=%d\n", i, *iptr_argin);
        *iptr_retval = *iptr_argin * 3; // compute return value
        (*iptr_argin)++; // increment input argument
    }
    return (void *) iptr_retval;
}

/**
 * @brief A thread that takes turns talking with the main thread.
 *
 * @param[in] arg Not used.
 *
 * @return Nothing
 */
void yourturn(void)
{
    // Loop to simulate turn-taking behavior
    for (int i = 0; i < 3; ++i) {
        // Sleep for 2 seconds to simulate the time between messages
        sleep(2);
        // Print message indicating it's this thread's turn
        printf("Your Turn! [%d]\n", i);
    }
}

/**
 * @brief A thread that prints "His Turn!" every second.
 *
 * @param[in] arg Not used.
 *
 * @return NULL.
 */
void *histurn(void *arg)
{
    for (int i = 0; i < 4; ++i) {
        // Sleep for 1 second to simulate turn-taking behavior
        sleep(1);
        // Print message indicating it's this thread's turn
        printf("His Turn! [%d]\n", i);
    }
    return NULL;
}
