#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#define FAILURE 1

int mythread_join(pthread_t tid, void **retval);

int thread_exists(pthread_t tid);

void wait_for_thread_to_finish(pthread_t tid);

void *get_thread_return_value(pthread_t tid);

/**
 * @brief This function is called by the created thread.
 *
 * It multiplies the input argument by 3 and returns a pointer to the result.
 *
 * @param arg A pointer to an integer argument.
 * @return A pointer to an integer result.
 */
void *thread_func(void *arg) {
    int *iptr_argin = (int *) arg; // Cast the argument to a pointer to an integer
    int *iptr_retval = malloc(sizeof(int)); // Allocate memory for the return value
    for (int i = 0; i < 7; ++i) {
        printf("thread [%d]: arg_in=%d\n", i, *iptr_argin);
        *iptr_retval = *iptr_argin * 3; // Multiply the argument by 3
        *iptr_argin += 1; // Increment the argument
    }
    return iptr_retval;
}

int main(void)
{
    printf("== minic pthread_join and learn double pointer ==\n\n");

    printf("size of void: %d\n", sizeof(void));
    printf("size of char: %d\n", sizeof(char));
    printf("size of int: %d\n", sizeof(int));
    printf("size of (void *): %d\n\n", sizeof(void *));

    pthread_t tid;
    int val_in = 5;
    pthread_create(&tid, NULL, thread_func, &val_in);
    void *retval;
    mythread_join(tid, &retval);
    printf("\ntid's done: retval=%d\n", *(int *)retval);

    return 0;
}

/**
 * @brief Waits for a thread to finish and gets its return value.
 *
 * This function implements a simplified version of the POSIX function `pthread_join`.
 * It waits for the specified thread to finish, and then retrieves the return value of the thread.
 *
 * @param[in] tid The thread id to wait for.
 * @param[out] retval Pointer to a pointer that will receive the return value of the thread.
 *                     If `retval` is `NULL`, the return value of the thread is not retrieved.
 * @return 0 if the function succeeds, and `FAILURE` if the thread does not exist.
 */
int mythread_join(pthread_t tid, void **retval)
{
    if (!thread_exists(tid)) {
        return FAILURE;
    }
    //wait_for_thread_to_finish(tid);
    if (retval != NULL) {
        *retval = get_thread_return_value(tid);
    }
    return 0; // Return 0 to indicate success
}

/**
 * @brief Checks whether a thread is still alive.
 *
 * The pthread_kill function sends a signal to the thread specified by tid.
 * - If the signal is 0, no signal is sent, but the function still checks if the thread exists.
 * - If `pthread_kill` returns 0, it means the thread exists, and the function returns 1.
 * - If `pthread_kill` returns a non-zero value and sets `errno` to `ESRCH`, it means the thread does not exist, and the
 *   function returns 0.
 * - If `pthread_kill` returns a non-zero value and sets `errno` to a value other than `ESRCH`,
 *   an error occurred, and the function returns -1.
 *
 * @param tid The thread id to check.
 * @return 1 if the thread is alive, 0 if it is not, and -1 if an error occurred.
 */
int thread_exists(pthread_t tid)
{
    int result = pthread_kill(tid, 0);
    if (result == 0) {
        return 1;
    } else if (errno == ESRCH) {
        // If the error code is ESRCH, the thread does not exist.
        return 0;
    } else {
        // Any other error code indicates that an error occurred.
        return -1;
    }
}

void wait_for_thread_to_finish(pthread_t tid)
{
    pthread_join(tid, NULL);
}

void* get_thread_return_value(pthread_t tid)
{
    // cannot malloc(sizeof(void)) because void doesn't have size
    void *retval = malloc(sizeof(void));
    pthread_join(tid, &retval);
    return retval;
}
