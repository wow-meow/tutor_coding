## References

#### Geeks-for-Geeks

[Multithreading in C - GeeksforGeeks](https://www.geeksforgeeks.org/multithreading-in-c/)

Threads (light-weight process) operate faster than processes due to following reasons:

- Thread creation is much faster.
- Context switching between threads is much faster.
- Threads can be terminated easily 
- Communication between threads is faster.

#### Youtube Channel -- Diana Farhat 

[2. Multithreading: Thread Creation Using `pthread_create()` - YouTube](https://www.youtube.com/watch?v=8aB3-afHHCc&list=PLXV2t2tSoKWjEKVpEc0SuiBLygCBZbYfx&index=3)


#### Purposes of calling `pthread_exit(NULL)` in main() before `return 0;`

Thread and process termination:

`pthread_exit(NULL)` asks the main thread to wait until all other threads in
the same process finish.

Resource management:

Before the main thread calls "return 0" and the process terminates,
`pthread_exit(NULL)` allows other threads to release mutexes, close file
descriptors, or perform other necessary resource cleanup operations.

#### `perror()`

The actual error message that perror() prints is based on the value of the
global variable errno.

#### `exit(EXIT_SUCCESS);` vs `return 0;`

Macro `EXIT_SUCCESS` is 0.

``` c
exit(EXIT_SUCCESS); // cleans up resources and forcefully terminates the process
return 0; // terminates the process, unwinds the stack, cleans up local variables
```

#### Sample codes

``` c
/**
 * The main thread terminates and codes after this line will not be reached.
 * But the process is still alive and waits until other threads finish.
 * If pthread_join(thread, &((void *) res)) is called for every thread,
 * there is no need for an additional pthread_exit(NULL) call.
 * */
pthread_exit(NULL); // main thread terminates and other threads continue

/**
 * codes after pthread_exit() will not be reached.
 * Best practice: comment them out for readibility
 * */
exit(EXIT_SUCCESS); // cleans up resources and forcefully terminates the process
return 0; // terminates the process, unwinds the stack, cleans up local variables
```

