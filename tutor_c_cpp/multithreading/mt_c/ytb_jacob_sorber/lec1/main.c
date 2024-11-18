#include <stdio.h>
#include <pthread.h>
//#include <stdlib.h>
#include <unistd.h> // sleep

/**
 * @brief A thread that takes turns talking with the main thread.
 *
 * @param[in] arg Not used.
 *
 * @return NULL.
 */
void *myturn(void *arg)
{
    for (int i = 0; i < 8; ++i) {
        /**
         * Sleep for 1 second to give the main thread a chance to talk.
         */
        sleep(1);
        printf("My Turn! [%d]\n", i);
    }
    return NULL;
}

/**
 * @brief A thread that alternates speaking.
 *
 * @param[in] arg Not used.
 *
 * @return NULL.
 */
void *yourturn(void *arg)
{
    for (int i = 0; i < 3; ++i) {
        // Sleep for 2 seconds to simulate turn-taking behavior
        sleep(2);
        // Print message indicating it's this thread's turn
        printf("Your Turn! [%d]\n", i);
    }
    return NULL;
}

/**
 * @brief Daemon thread that just talks forever.
 *
 * @param arg Not used.
 *
 * @return NULL.
 */
void *daemon_talks(void *arg)
{
    for (int i = 0; i < 20; ++i) {
        sleep(1);
        printf("Daemon is talking! [%d]\n", i);
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
    for (int i = 0; i < 5; ++i) {
        // Sleep for 1 second to simulate turn-taking behavior
        sleep(1);
        // Print message indicating it's this thread's turn
        printf("His Turn! [%d]\n", i);
    }
    return NULL;
}

/**
 * @brief The main entry point of the program.
 *
 * Creates a daemon thread that will print a message every second.
 * Creates a non-daemon thread that will print a message every second.
 * The main thread will execute the yourturn function which will print a message every 2 seconds.
 * The main thread will wait for both threads to finish before exiting.
 *
 * @return 0 on success.
 */
int main(void)
{
    // Print program title
    printf("== Lecture 1 Pthread Basics ==\n\n");

    // Create a thread attribute for the daemon thread
    pthread_t tid_daemon;
    pthread_attr_t attr;
    pthread_attr_init(&attr); // Initialize thread attribute
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED); // Set thread as detached
    pthread_create(&tid_daemon, &attr, daemon_talks, NULL); // Create the daemon thread
    pthread_attr_destroy(&attr); // Destroy the thread attribute

    // Create a thread for the myturn function
    pthread_t tid;
    pthread_create(&tid, NULL, myturn, NULL); // Create the myturn thread

    // Execute yourturn function in the main thread
    yourturn(NULL);

    // Cancel the myturn thread, if needed
    pthread_cancel(tid);

    // Daemon threads are automatically destroyed when the main thread exits
    // Main thread will not wait for the daemon thread to finish
    pthread_join(tid_daemon, NULL);

    // Main thread will wait for the non-daemon (myturn) thread to finish
    pthread_join(tid, NULL);

    // Create a thread for the histurn function
    pthread_t tid_histurn;
    pthread_create(&tid_histurn, NULL, histurn, NULL); // Create the histurn thread

    // Wait for the histurn thread to finish
    pthread_join(tid_histurn, NULL);

    // Exit the main thread
    // pthread_exit(NULL);

    return 0;
}
