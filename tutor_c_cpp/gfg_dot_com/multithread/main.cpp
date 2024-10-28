//#define BASIC1
//#define BASIC2
//#define STRERROR
#define NOMUTEX
//#define MUTEX
#define SYNC
//#define SYNC0

//#include <iostream>
#include <cstdio>
//#include <cstdlib>
#include <iterator>
#include <pthread.h>
#include <unistd.h> //for sleep(), man 3 sleep for details

// create a global variable to change it in threads
int g_num { 0 };
int g_counter1 { 0 };
int g_counter_tid_arr2 { 0 };
int g_counter_tid_arr3 { 0 };
//volatile int g_counter_tid_arr3 { 0 }; // volatile keyword is VERY IMPORTANT

int g_len_tid_arr3; // malloc tid_arr3[]

pthread_mutex_t g_mutex_tid_arr2;
pthread_mutex_t g_mutex_tid_arr3 { PTHREAD_MUTEX_INITIALIZER };
pthread_cond_t* g_cond_tid_arr3 { nullptr }; // pointer

// a normal function that is executed as a thread, when its name is specified in pthread_create()
void *func1_thread(void *args) {
    //sleep(1);
    //usleep(5E5);
    for (int i = 0; i < 1E2; ++i) {
        printf("%d, ", i);
    }
    printf("\n");
    printf("Printing GeeksQuiz from Thread\n");
    return nullptr;
}

void *func2_thread(void *args) {
    // store the value argument passed to this thread
    int tid = getpid();
    // static variable to observe its change
    static int s_num;
    // change the static and global variables
    s_num += 2;
    g_num += 3;

    usleep(88);
    printf("Process ID: %d, Static: %d, Global: %d\n", tid, s_num, g_num);

    return nullptr;
}

void *func3_thread(void *args) {
    g_counter1 += 1;
    printf("No-Mutex: Job %d has started.\n", g_counter1);
    for (unsigned long i = 0; i < (0xFFFFFFFF); ++i) {
        // wait
    }
    printf("No-Mutex: Job %d has finished.\n", g_counter1);
    return nullptr;
}

void *func4_thread(void *args) {
    pthread_mutex_lock(&g_mutex_tid_arr2);

    g_counter_tid_arr2 += 1;
    printf("With Mutex: Job %d has started.\n", g_counter_tid_arr2);
    for (unsigned long i = 0; i < (0xFFFFFFFF); ++i) {
        // wait
    }
    printf("With Mutex: Job %d has finished.\n", g_counter_tid_arr2);

    pthread_mutex_unlock(&g_mutex_tid_arr2);
    return nullptr;
}

void *func5_thread(void *args) {
    int tidno;
    tidno = *static_cast<int *>(args);
    int cnt_while = 0;
    while (true) {
        pthread_mutex_lock(&g_mutex_tid_arr3);

        // g_counter_tid_arr3 is used to determined which thread should
        // enter into the critical section, that is, printf() + update counter statement
        if (tidno != g_counter_tid_arr3) {
            pthread_cond_wait(&g_cond_tid_arr3[tidno], &g_mutex_tid_arr3);
        }

        // pthread_cond_signal
        printf("%d ", 1 + tidno);

        // determine which thread need to be scheduled now
        if (g_counter_tid_arr3 < g_len_tid_arr3 - 1) {
            g_counter_tid_arr3 += 1;
        }
        else {
            g_counter_tid_arr3 = 0; // loop back
        }

        // wake up next thread
        pthread_cond_signal(&g_cond_tid_arr3[g_counter_tid_arr3]); // wake up
        pthread_mutex_unlock(&g_mutex_tid_arr3); // unlock shared resource

        ++cnt_while;
    }
    return nullptr;
}

pthread_mutex_t mutex { PTHREAD_MUTEX_INITIALIZER };
pthread_cond_t *cond { nullptr };
int threads;
//volatile int cnt { 0 };
int cnt { 0 };

void* func6_thread(void* args) {
    // turn is a basically to identify a thread
    int turn = *static_cast<int *>(args);

    while (true) {
        pthread_mutex_lock(&mutex);

        // cnt is used to determine which thread should
        // enter into critical section(printf() statement)
        if (turn != cnt) {
            // put all thread except one thread in waiting state
            pthread_cond_wait(&cond[turn], &mutex);
        }

        // it's a time to print turn can have
        // values starting from 0. Hence + 1
        printf("%d ", turn + 1);

        // determine which thread need to be scheduled now
        if (cnt < threads - 1) {
            cnt += 1;
        }
        else {
            cnt = 0;
        }

        // wake up next thread
        pthread_cond_signal(&cond[cnt]);
        pthread_mutex_unlock(&mutex);
    }

    return nullptr;
}

int main() {
    printf("\n== Learn Multithreading ==\n");

#ifdef STRERROR
    printf("\n=== Error Code ===\n\n");

    printf("Error Code [%d] : [%s]\n", errno, strerror(errno));

    int errnum_arr[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 };
    for (auto errnum: errnum_arr) {
        printf("Error Code [%d] : [%s]\n", errnum, strerror(errnum));
    }
#endif // STRERROR

#ifdef BASIC1
    printf("\n=== BASIC1 ===\n\n");

    pthread_t thread1_id; // identifier number of thread
    printf("Before Thread\n");

    /* pthread_create() takes 4 arguments.
     * The first argument is a pointer to thread_id which is set by this function.
     * The second argument specifies attributes. If the value is NULL, then default attributes shall be used.
     * The third argument is name of function to be executed for the thread to be created.
     * The fourth argument is used to pass arguments to the function, myThreadFun.
     * */
    pthread_create(&thread1_id, nullptr, func1_thread, nullptr); // create a thread

    /* The pthread_join() function for threads is the equivalent of wait() for processes.
     * A call to pthread_join blocks the calling thread until the thread with identifier
     * equal to the first argument terminates.
     * */
    pthread_join(thread1_id, nullptr); // wait until func_thread1() finishes

    printf("After Thread\n");
    //exit(0);
#endif // BASIC1

#ifdef BASIC2
    printf("\n=== BASIC2: Multiple Threads created based on Only One Thread ID and One thread function ===\n\n");

    pthread_t thread2_id;
    constexpr int N_THREADS = 3; // create 3 threads
    for (int i = 0; i < N_THREADS; ++i) {
        pthread_create(&thread2_id, nullptr, func2_thread, nullptr);
    }
    pthread_join(thread2_id, nullptr);
#endif // BASIC2

#ifdef NOMUTEX
    printf("\n=== Multiple Thread Identifiers using a single thread function ===\n\n");

    pthread_t tid_arr1[3];
    //constexpr int len_tids = sizeof(tids) / sizeof(*tids);
    for (auto tid: tid_arr1) {
        int errnum = pthread_create(&tid, nullptr, func3_thread, nullptr);
        if (errnum != 0) {
            printf("Thread cannot be created : [%s]\n", strerror(errnum));
        }
    }

    for (const auto tid: tid_arr1) {
        pthread_join(tid, nullptr);
    }
#endif // NOMUTEX

#ifdef MUTEX
    /* An example to show how mutexes are used for thread synchronization
     * */
    printf("\n=== Showcase Mutex ===\n\n");

    //g_tid_counter2 = 0;
    pthread_t tid_arr2[3];

    if (pthread_mutex_init(&g_mutex_tid_arr2, nullptr) != 0) {
        printf("\nMutex initialization has failed!\n");
        return 1;
    }

    for (auto tid: tid_arr2) {
        int errnum = pthread_create(&tid, nullptr, func4_thread, nullptr);
        if (errnum != 0) {
            printf("Thread cannot be created : [%s]\n", strerror(errnum));
        }
    }

    for (const auto tid: tid_arr2) {
        pthread_join(tid, nullptr);
    }

    pthread_mutex_destroy(&g_mutex_tid_arr2);
#endif // MUTEX

#ifdef SYNC
    // C code to synchronize threads
    printf("\n=== Showcase how to synchronize threads ===\n\n");
    printf("\nEnter the number of threads: ");
    scanf("%d", &g_len_tid_arr3);

    // allocate memory to "conditional variable" array
    g_cond_tid_arr3 = static_cast<pthread_cond_t *>(malloc(g_len_tid_arr3 * sizeof(pthread_cond_t)));

    // allocate memory to thread identifiers
    pthread_t *tid_arr3;
    tid_arr3 = static_cast<pthread_t *>(malloc(g_len_tid_arr3 * sizeof(pthread_t)));

    // allocate memory to args for thread functions
    int *arg_tid_arr3;
    arg_tid_arr3 = static_cast<int *>(malloc(g_len_tid_arr3 * sizeof(int)));

    // initialize conditional variables
    for (int i = 0; i < g_len_tid_arr3; ++i) {
        if (pthread_cond_init(&g_cond_tid_arr3[i], nullptr) != 0) {
            perror("pthread_cond_init failed");
            printf("%d : [%s]\n", errno, strerror(errno));
            exit(1);
        }
    }

    // create threads, tid_arr3[]
    for (int i = 0; i < g_len_tid_arr3; ++i) {
        arg_tid_arr3[i] = i;
        pthread_create(&tid_arr3[i], nullptr,
            func5_thread, static_cast<void *>(&arg_tid_arr3[i]));
    }

    // let main thread wait until these threads finish
    for (int i = 0; i < g_len_tid_arr3; ++i) {
        pthread_join(tid_arr3[i], nullptr);
    }

    // free memory, then remove dangling pointers
    free(g_cond_tid_arr3);
    g_cond_tid_arr3 = nullptr;
    free(tid_arr3);
    tid_arr3 = nullptr;
    free(arg_tid_arr3);
    arg_tid_arr3 = nullptr;
#endif // SYNC

#ifdef SYNC0
    pthread_t *tid;
    //volatile int i;
    int *arr;

    printf("\nEnter number of threads: ");
    scanf("%d", &threads);

    // allocate memory to cond (conditional variable),
    // thread id's and array of size threads
    cond = static_cast<pthread_cond_t *>(malloc(sizeof(pthread_cond_t)
                                                * threads));
    tid = static_cast<pthread_t *>(malloc(sizeof(pthread_t) * threads));
    arr = static_cast<int *>(malloc(sizeof(int) * threads));

    // Initialize cond (conditional variable)
    for (int i = 0; i < threads; i++) {
        if (pthread_cond_init(&cond[i], nullptr) != 0) {
            perror("pthread_cond_init() error");
            exit(1);
        }
    }

    // create threads
    for (int i = 0; i < threads; i++) {
        arr[i] = i;
        pthread_create(&tid[i], nullptr, func6_thread, (void*)&arr[i]);
    }

    // waiting for thread
    for (int i = 0; i < threads; i++) {
        pthread_join(tid[i], nullptr);
    }

    free(cond);
    free(tid);
    free(arr);
#endif // SYNC0

    pthread_exit(nullptr);
    return 0;
}
