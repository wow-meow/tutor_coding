#include <stdio.h>
#include <stdlib.h> // malloc, free
#include <pthread.h> // POSIX Thread Library
#include <unistd.h> // usleep, sleep
#include <string.h> // strlen, strcpy
#include <time.h>

typedef struct MyString {
    int len;
    char *data;
} string_t;

int duplicateAndConcatenate(char **res, int *ptr_len_res,
    const char src[], const char separator[], int n_copies);

typedef void *(*thread_func_t)(void *);
void *sayHelloToSomeone_cstring_thfunc(void *arg);
void *sayHelloToSomeone_string_t_thfunc(void *arg);

int create_join_thread_cstring(void *rets[], int n_threads, thread_func_t thread_func,
    const char src[], const char separator[]);
int create_join_thread_string_t(void *rets[], int n_threads, thread_func_t thread_func,
    const char src[], const char separator[]);


int main(void)
{
    printf("== Duplicate and Concatenate Strings\n -- Yet Another Example ==\n\n");

    printf("\n=== {char *} ===\n\n");

    const int n_threads = 2;
    void *rets[n_threads] = {};
    int err = 0;

    err = create_join_thread_cstring(rets, n_threads, sayHelloToSomeone_cstring_thfunc, "Jerry", ".");
    printf("err: %d\n", err);

    /**
     * print out results
     **/

    for (int i = 0; i < n_threads; ++i) {
        char *res = (char *) rets[i];
        printf("Thread %d said: %s\n", i, res);
        free(res);
    }

    printf("\n=== {string_t} ===\n\n");

    err = create_join_thread_string_t(rets, n_threads, sayHelloToSomeone_string_t_thfunc, "Tom", "-");
    printf("err: %d\n", err);

    /**
     * print out results
     **/

    for (int i = 0; i < n_threads; ++i) {
        string_t *res = (string_t *) rets[i];
        printf("Thread %d said: %s\n", i, res->data);
        free(res->data);
        free(res);
    }

    pthread_exit(NULL);
    return 0;
}

/**
 * 
 * @param arg {void *} is passed in an address of {char *} c-string, so `arg` is a {char **}
 * @return 
 */
void *sayHelloToSomeone_cstring_thfunc(void *arg)
{
    /**
     * arg is in fact a double pointer to char {char **}
     * */

    //char *name = (char *) arg; // <-- no error thrown out, the result is erroneous
    char *name = *((char **) arg);
    printf("Hello, (name) %s!\n", name);

    char str_part1[] = "Hello, ";
    char str_part2[] = "!";
    int len_whole_str = strlen(str_part1) + strlen(name) + strlen(str_part2);

    char *res = (char *) malloc(sizeof(char) * (1 + len_whole_str));
    strcpy(res, str_part1);
    strcat(res, name);
    strcat(res, str_part2);
    printf("Say (res): %s\n", res);

    pthread_exit(res);
    //return NULL;
}

void *sayHelloToSomeone_string_t_thfunc(void *arg)
{
    string_t *name = (string_t *) arg;
    char str_part1[] = "Hello, ";
    char str_part2[] = "!";
    int len_whole_str = strlen(str_part1) + name->len + strlen(str_part2);
    string_t *res = (string_t *) malloc(sizeof(string_t));
    res->data = (char *) malloc(sizeof(char) * (1 + len_whole_str));
    strcpy(res->data, str_part1);
    strcat(res->data, name->data);
    strcat(res->data, str_part2);

    printf("Hello, (name->data) %s!\n", name->data);
    printf("Say (res->data): %s\n", res->data);

    pthread_exit(res);
    //return NULL;
}

int duplicateAndConcatenate(char **res, int *ptr_len_res,
    const char src[], const char separator[], int n_copies)
{
    //printf(">>> in duplicateAndConcatenate():\n");

    int len = strlen(src) * n_copies + strlen(separator) * (n_copies - 1);
    *ptr_len_res = len;
    *res = (char *) malloc( sizeof(char) * (1 + len) ); // plus one for '\0'
    if (*res == NULL) {
        fprintf(stderr, "ERROR: No enough heap memory. len: %d\n", len);
        return 1;
    }

    for (int i = 0; i < n_copies; ++i) {
        if (i > 0) {
            if (strcat(*res, separator) == NULL) {
                fprintf(stderr, "ERROR: strcat(%s, %s)\n", *res, separator);
                return 1;
            }
        }
        if (i == 0) {
            if (strcpy(*res, src) == NULL) {
                fprintf(stderr, "ERROR: strcpy(%s, %s)\n", *res, src);
                return 1;
            }
        } else {
            if (strcat(*res, src) == NULL) {
                fprintf(stderr, "ERROR: strcat(%s, %s)\n", *res, src);
                return 1;
            }
        }
    }

    return 0;
}

int create_join_thread_string_t(void *rets[], int n_threads, thread_func_t thread_func,
    const char src[], const char separator[])
{
    pthread_t tids[n_threads] = {};

    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    /**
     * - exit_status defined in a pointer to string_t
     * - It must be a pointer, because we need to allocate heap memory instead of using stack memory.
     * - It points to a string_t variable that is what a thread creates.
     *
     * pthread_create
     **/

    // struct MyString, string_t
    string_t whole_strs[n_threads] = {}; // an array of names (string, char array)
    for (int i = 0; i < n_threads; ++i) {
        printf("[Main Thread] duplicateAndConcatenate()\n");
        int err = duplicateAndConcatenate(&whole_strs[i].data, &whole_strs[i].len,
            src, separator, 1 + i);
        if (err != 0) { return 1; }

        err = pthread_create(&tids[i], &th_attr, thread_func, &whole_strs[i]);
        if (err != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", err, strerror(err));
            return 1;
        }
        //free(names[i].data);
    }

    /**
     * pthread_join
     * */

    for (int i = 0; i < n_threads; ++i) {
        int err = pthread_join(tids[i], &rets[i]);
        if (err != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", err, strerror(err));
            return 1;
        }
    }

    return 0;
}

int create_join_thread_cstring(void *rets[], int n_threads, thread_func_t thread_func,
    const char src[], const char separator[])
{
    pthread_t tids[n_threads] = {};

    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    /**
     * - exit_status defined in a pointer to c-string {char *}
     * - the c-string is exactly what a thread creates
     * - {char *} is already legal to allocate heap memory to pass out exit_status,
     * - no need to define a double pointer {char **}
     *
     * pthread_create
     **/

    char* whole_strs[n_threads] = {}; // an array of names (string, char array)
    int nameLengths[n_threads] = {};
    for (int i = 0; i < n_threads; ++i) {
        printf("[Main Thread] duplicateAndConcatenate()\n");
        int err = duplicateAndConcatenate(&whole_strs[i], &nameLengths[i],
            src, separator, 1 + i);
        if (err != 0) { return 1; }

        err = pthread_create(&tids[i], &th_attr, thread_func, &whole_strs[i]);
        if (err != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", err, strerror(err));
            return 1;
        }
        //free(names_cstring[i]);
    }

    /**
     * pthread_join
     * */

    for (int i = 0; i < n_threads; ++i) {
        int err = pthread_join(tids[i], &rets[i]);
        if (err != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", err, strerror(err));
            return 1;
        }
    }

    return 0;
}