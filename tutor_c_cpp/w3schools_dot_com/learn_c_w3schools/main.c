//#define TUTOR_INPUT_STRING
//#define TUTOR_VARIABLE_INITIALIZATION
//#define TUTOR_FOPEN_READ
//#define TUTOR_FOPEN_APPEND
//#define TUTOR_STRUCT
//#define TUTOR_ENUM
//#define TUTOR_MEMORY_REALLOCATION
//#define TUTOR_MEMORY_MANAGEMENT
//#define TUTOR_POINTER_ARITHMETICS
//#define TUTOR_STACKOVERFLOW_HUGE_ARRAY
//#define TUTOR_STACKOVERFLOW_INF_RECURSION
#define TUTOR_STATIC_EXTERN
//#define TUTOR_DATA_SEGMENT_BSS

/* Multithreaded,
 * https://www.geeksforgeeks.org/use-volatile-keyword-in-c/
 * */
//#define TUTOR_VOLATILE_MULTITHREADED

/* gcc compiler's code optimization,
 * https://www.geeksforgeeks.org/understanding-volatile-qualifier-in-c/
 * */
//#define TUTOR_VOLATILE_GCC

#include <stdio.h>

#ifdef TUTOR_STRUCT
#include <string.h>
#endif

#if defined TUTOR_MEMORY_REALLOCATION || defined TUTOR_MEMORY_MANAGEMENT || defined TUTOR_DATA_SEGMENT_BSS
#include <stdlib.h> // free()
#endif

#ifdef TUTOR_STRUCT
typedef struct MyStructType0 {
  int myNumber;
  char myLetter;
  char myString[30];
} myStruct0_t;

typedef struct {
  int myNumber;
  char myLetter;
  char myString[30];
} myStruct_t;

struct MyStructType{
  int myNumber;
  char myLetter;
  char myString[30];
};
#endif //TUTOR_STRUCT

#ifdef TUTOR_ENUM
typedef enum Level {
  LOW = 25,
  MEDIUM,
  HIGH,
} level_t;
#endif //TUTOR_ENUM

#ifdef TUTOR_MEMORY_MANAGEMENT
typedef struct list_struct_type {
  int *m_data; // points to the memory where the list items are the stored
  int m_num_items; // indicates how many items are currently in the list, occupied spaces
  int m_size; // indicates how many items fit in the allocated memory, capacity of the list
} list_t;

int add_to_list(list_t *p_list, const int item);
#endif //TUTOR_MEMORY_MANAGEMENT

#ifdef TUTOR_STACKOVERFLOW_INF_RECURSION
int eatStack(); // function declaration
#endif //TUTOR_STACKOVERFLOW_INF_RECURSION

#ifdef TUTOR_VOLATILE_MULTITHREADED
#include <pthread.h>
// Volatile variable to be accessed by multiple threads
volatile int volVar = 0;
// Mutex for synchronization
pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;
// Function to increment the volatile variable
void *incValue(void *arg);
#endif //TUTOR_VOLATILE_MULTITHREADED

#ifdef TUTOR_STATIC_EXTERN
#include "add.h"
#endif //TUTOR_STATIC_EXTERN

#ifdef TUTOR_DATA_SEGMENT_BSS
void update_static_integers(void);
int g_integer_initialized = 9; // global vars stored in Initialized Data segment
int g_integer_uninitialized; // global vars stored in Un-initialized Data segment (BSS, block starting symbols)
#endif //TUTOR_DATA_SEGMENT_BSS

int main() {
#ifdef TUTOR_VARIABLE_INITIALIZATION
  int x1, x2, x3;
  x1 = x2 = x3 = 50;
  printf("%d, %d, %d\n", x1, x2, x3);
#endif //TUTOR_VARIABLE_INITIALIZATION

#ifdef TUTOR_INPUT_STRING
  /* input and store a string
   * */

  int myNum = 0;
  char myChar = '\0';
  char firstName[30] = "";

  //printf("Type a number and a char, and press enter: \n");
  //scanf("%d %c", &myNum, &myChar);
  //printf("num: %d, char: %c\n", myNum, myChar);

  //printf("Type a string and press enter: \n");
  //scanf("%s", &firstName);
  //printf("Hello %s\n", firstName);

  char fullName[30] = "";
  printf("Type your full name: \n");
  fgets(fullName, sizeof(fullName), stdin);
  printf("Hello %s\n", fullName);
#endif //TUTOR_INPUT_STRING

#ifdef TUTOR_POINTER
  /* pointer usages
   * */

  int myAge = 43;
  int *p_Age = &myAge;
  printf("age: %d\n", *p_Age);
  printf("addr: 0x%p\n", &myAge);
  printf("addr: 0x%p\n", p_Age);

  int myNumbers[] = {25, 50, 75, 100};
  printf("The array name is the pointer: \n");
  printf("0x%p\n0x%p\n", myNumbers, &myNumbers[0]);
  printf("%d\n%d\n", *myNumbers, myNumbers[0]);

  int *p_Number = myNumbers;
  const int len_myNumbers = sizeof(myNumbers) / sizeof(myNumbers[0]);
  for (int i = 0; i < len_myNumbers; ++i) {
    printf("%d\n", *(p_Number + i));
  }
  */
#endif //TUTOR_POINTER

#ifdef TUTOR_FOPEN_READ
  /* fopen() read mode
   * */

  FILE *p_file = fopen("newtext.txt", "r");
  if (!p_file) {
    printf("file NOT accessible!\n");
  }
  else {
    printf("file content:\n");
    char fileContent[100];
    while (fgets(fileContent, 100, p_file)) {
      printf("%s", fileContent);
    }
    fclose(p_file);
  }
#endif //#ifdef TUTOR_FOPEN_READ

#ifdef TUTOR_FOPEN_APPEND
  /* fopen() append mode
   * */

  FILE *p_file = fopen("newtext.txt", "a");
  int res = 0;
  res = fprintf(p_file, "some text, %d, %i, %.2f, 0x%x, %a, %.2f%%\n%s\n",
    res, res * 2, res + 0.333, 1688, 1688.88, 99.6666, "Hey, Bro!");
  printf("res of fprintf: %d\n", res);
  res = fprintf(p_file, "Hello World!\n");
  printf("res of fprintf: %d\n", res);
  res = fclose(p_file);
  printf("res of fclose: %d\n", res);
#endif //TUTOR_FOPEN_APPEND

#ifdef TUTOR_STRUCT
  /* Structure
   * */

  myStruct_t s1;
  s1.myNumber = 14;
  s1.myLetter = 'A';
  strcpy(s1.myString, "some text");
  printf("s1 :: myNumber: %d, myLetter: %c, myString: %s\n",
    s1.myNumber, s1.myLetter, s1.myString);

  myStruct_t s2 = {1688, 'G', "Hello World!"};
  printf("s2 :: myNumber: %d, myLetter: %c, myString: %s\n",
    s2.myNumber, s2.myLetter, s2.myString);

  myStruct_t s3 = s1; //copy struct
  printf("s3 :: myNumber: %d, myLetter: %c, myString: %s\n",
    s3.myNumber, s3.myLetter, s3.myString);

  //modify values or members in a structure
  s3.myNumber = 99;
  s3.myLetter = 'S';
  strcpy(s3.myString, "Hey Bro!");
  printf("s3 :: myNumber: %d, myLetter: %c, myString: %s\n",
    s3.myNumber, s3.myLetter, s3.myString);
#endif //TUTOR_STRUCT

#ifdef TUTOR_ENUM
  /* C Enumeration (enum)
   * */

  level_t l1 = MEDIUM;
  printf("%d\n", l1);

  switch (l1) {
    case LOW:
      printf("Low level\n");
      break;
    case MEDIUM:
      printf("Medium level\n");
      break;
    case HIGH:
      printf("High level\n");
      break;
    default:
  }
#endif //TUTOR_ENUM

#ifdef TUTOR_MEMORY_ALLOCATION
  /* Memory allocation
   * */

  int *students = NULL;
  int numStudents = 12;
  //students = malloc(sizeof(*students) * numStudents);
  students = calloc(numStudents, sizeof(*students));
  printf("total memory used: %llu", sizeof(*students) * numStudents);

  int *ptr1 = malloc(4);
  char *ptr2 = (char*) ptr1;
  ptr1[0] = 1684234849;
  printf("%d is %c %c %c %c\n", *ptr1, ptr2[0], ptr2[1], ptr2[2], ptr2[3]);
  printf("%d\n", 'a');

  free(students);
#endif //TUTOR_MEMORY_ALLOCATION

#ifdef TUTOR_MEMORY_REALLOCATION
  /* Memory reallocation
   * */

  int *ptr1, *ptr1_realloc, size;
  size = 4 * sizeof(*ptr1);
  ptr1 = malloc(size);
  if (ptr1 == NULL) {
    fprintf(stderr, "Failed. Unable to allocate memory!\n");
    return 1;
  }
  printf("%d bytes allocated at addr:\n0x%p\n", size, ptr1);

  for (int i = 0; i < 4; ++i) {
    ptr1[i] = i;
    printf("%d, ", ptr1[i]);
  }
  printf("\n");

  size = 1024 * sizeof(*ptr1);
  ptr1_realloc = realloc(ptr1, size);
  if (ptr1_realloc == NULL) {
    fprintf(stderr, "Failed. Unable to resize memory!\n");
    free(ptr1);
    return 1;
  } else {
    printf("Success. %d bytes reallocated at addr:\n0x%p\n", size, ptr1_realloc);
  }

  if (ptr1 != ptr1_realloc) {//??: free(ptr1) has already been called in realloc()
    ptrdiff_t diffPtrInt = ptr1_realloc - ptr1;
    ptrdiff_t diffPtrIntInBytes = diffPtrInt * sizeof(*ptr1);
    ptrdiff_t diffPtrChar = (char*)ptr1_realloc - (char*)ptr1;
    ptrdiff_t diffPtrCharInBytes = diffPtrChar * sizeof(char);

    printf("diffPtrInt: 0x%llx, diffPtrChar: 0x%llx\n", diffPtrInt, diffPtrChar);
    printf("diffPtrIntInBytes: 0x%llx, diffPtrCharInBytes: 0x%llx\n",
      diffPtrIntInBytes, diffPtrCharInBytes);
    printf("As a dangling pointer, ptr1 points to an un-freed memory "
           "that stores an unknown value: %d\n", ptr1[0]);

    //free(ptr1);
    ptr1 = ptr1_realloc;
  }

  free(ptr1);
#endif //TUTOR_MEMORY_REALLOCATION

#ifdef TUTOR_POINTER_ARITHMETICS
  /* pointer arithmetics
   * */

  int a = 1, b = 2;
  int *p_a = &a;
  int *p_b = &b;
  printf("\n");
  printf("a's addr: 0x%p, b's addr: 0x%p\n", p_a, p_b);
  size_t addr_a = (size_t) p_a;
  size_t addr_b = (size_t) p_b;
  printf("a's addr: 0x%llx, b's addr: 0x%llx\n", addr_a, addr_b);
  size_t diffPtr = p_a - p_b;
  size_t diffAddr = addr_a - addr_b;
  ptrdiff_t diffInBytes = (p_a - p_b) * sizeof(*p_a);
  printf("diffPtr: %lld, diffAddr: %lld, diffInBytes: %lld\n", diffPtr, diffAddr, diffInBytes);
#endif //TUTOR_POINTER_ARITHMETICS

#ifdef TUTOR_MEMORY_MANAGEMENT
  /* memory management -- a real-life example
   * */

  list_t myList = { .m_data = NULL, .m_num_items = 0, .m_size = 10 };
  myList.m_data = malloc(myList.m_size * sizeof(*myList.m_data));
  if (myList.m_data == NULL) {
    fprintf(stderr, "Failed. Unable to allocate memory!\n");
    return 1;
  }

  // Add some items to the list
  const int amount = 44; // amount of items to be stored in the list
  int ret = 0;
  for (int i = 0; i < amount; ++i) {
    ret = add_to_list(&myList, i+7);
    if (ret != 0) {
      printf("Failed. Cannot add to list!");
      return 1;
    }
  }

  // Display the content in the list
  for (int i = 0; i < myList.m_num_items; ++i) {
    printf("[%d]: %d, ", i, myList.m_data[i]);
  }
  printf("\n");

  free(myList.m_data);
#endif //TUTOR_MEMORY_MANAGEMENT

#ifdef TUTOR_STACKOVERFLOW_HUGE_ARRAY
  /* tutor-1 stackoverflow
   * The simplest solution will be dynamic allocation in the heap memory
   * instead of static allocation in the (function call) stack memory
   * */
  int stack[10000000];
  printf("%d\n", stack[0]); // we'll use stack[0] here so the compiler won't optimize the array away
#endif //TUTOR_STACKOVERFLOW_HUGE_ARRAY

#ifdef TUTOR_STACKOVERFLOW_INF_RECURSION
  int ret = eatStack();
  printf("ret: %d\n", ret);
#endif //TUTOR_STACKOVERFLOW_INF_RECURSION

#ifdef TUTOR_VOLATILE_MULTITHREADED
  pthread_t t1, t2;

  // Create two threads to increment volVar
  pthread_create(&t1, NULL, incValue, NULL);
  pthread_create(&t2, NULL, incValue, NULL);

  // Wait for both threads to finish
  pthread_join(t1, NULL);
  pthread_join(t2, NULL);

  // Output the final value of volVar
  printf("Final value of volVar: %d\n", volVar);
#endif //TUTOR_VOLATILE_MULTITHREADED

#ifdef TUTOR_VOLATILE_GCC
  const int local = 10;
  int *ptr = (int *) &local;
  printf("Initial value of local : %d \n", local);
  *ptr = 100;
  printf("Modified value of local: %d \n", local);
#endif //TUTOR_VOLATILE_GCC

#ifdef TUTOR_STATIC_EXTERN
  extern int *p_integer_1;
  printf("The integer it points to: %d\n", *p_integer_1);
#endif //TUTOR_STATIC_EXTERN

#ifdef TUTOR_DATA_SEGMENT_BSS
  printf("\nVariables defined in main.c file, global:\n");
  printf("g_integer_initialized: %d\n", g_integer_initialized);
  printf("g_integer_uninitialized: %d\n", g_integer_uninitialized);

  static int s_integer_initialized = 99; // stored in Initialized Data segment
  static int s_integer_uninitialized; // stored in Uninitialized Data segment (BSS)
  int integer = 88; // stored in the function call stack of `main(void)`
  printf("\nVariables in main():\n");
  printf("s_integer_initialized: %d\n", s_integer_initialized);
  printf("s_integer_uninitialized: %d\n", s_integer_uninitialized);

  update_static_integers(); // Step into the scope of func1()

  printf("\nGets back in the Scope of main():\n");
  printf("s_integer_initialized: %d\n", s_integer_initialized);
  printf("s_integer_uninitialized: %d\n", s_integer_uninitialized);

  update_static_integers(); // Step into the scope of func1()

  printf("\nGets back in the Scope of main():\n");
  printf("s_integer_initialized: %d\n", s_integer_initialized);
  printf("s_integer_uninitialized: %d\n", s_integer_uninitialized);

  /* Heap: Used for dynamic memory allocation, managed manually by the programmer.
   * */

  int len = 5;
  int *p_arr = malloc(5 * sizeof(int)); // stored in heap
  if (p_arr == NULL) {
    fprintf(stderr, "Failed. Unable to allocate memory!\n");
    return 1;
  }

  int len_hack = sizeof(p_arr) / sizeof(*p_arr); // after evaluation, array decay to pointer
  printf("\nThe true len:\n%d\nAfter array decay, computed len:\n%d\n", len, len_hack);

  for (int i = 0; i < len; ++i) {
    p_arr[i] = i * i;
  }

  for (int i = 0; i < len; ++i) {
    printf("[%d]: %d, ", i, p_arr[i]);
  }
  printf("\n");

  free(p_arr);
#endif //TUTOR_DATA_SEGMENT_BSS

  return 0;
}

#ifdef TUTOR_MEMORY_MANAGEMENT
int add_to_list(list_t *p_list, const int item) {
  int num_items = p_list->m_num_items;
  int size = p_list->m_size;
  int *p_data = p_list->m_data;

  if (num_items == size) { // If list is full, then resize the memory to fit 10 more items
    int *p_data_realloc = realloc(p_data, (size + 10) * sizeof(*p_data));
    if (p_data_realloc == NULL) {
      fprintf(stderr, "Failed. Unable to reallocate memory!\n");
      return 1;
    }
    if (p_data_realloc != p_data) {
      free(p_data);
      p_data = p_data_realloc;
    }
    p_list->m_size += 10; // update list size
  }

  p_list->m_data[num_items] = item; // store the item data
  p_list->m_num_items++; // update
  return 0;
}
#endif //TUTOR_MEMORY_MANAGEMENT

#ifdef TUTOR_STACKOVERFLOW_INF_RECURSION
int eatStack() {
  static int s_counter = 0;
  s_counter++;
  printf("cnt: %d, ", s_counter);
  int ret = 0;
  // We use a conditional here to avoid compiler warnings about infinite recursion
  if (s_counter > 0) {
    ret = eatStack();
  }
  printf("hi"); // Needed to prevent compiler from doing tail-call optimization
  return ret;
}
#endif //TUTOR_STACKOVERFLOW_INF_RECURSION

#ifdef TUTOR_VOLATILE_MULTITHREADED
void *incValue(void *arg) {
  for (int i = 0; i < 10; i++) {
    // Lock the mutex before accessing volVar
    pthread_mutex_lock(&mtx);
    volVar++;
    // Unlock the mutex after modifying volVar
    pthread_mutex_unlock(&mtx);
  }
  return NULL;
}
#endif //TUTOR_VOLATILE_MULTITHREADED

#ifdef TUTOR_DATA_SEGMENT_BSS
void update_static_integers() {
  /* - BSS segment: Block Started by Symbol stores Uninitialized STATIC variables, which are set to zero by default
   * - Initialized Data Segment: stores EXPLICITLY Initialized STATIC variables
   * */
  static int s_integer_initialized = 999; // stored in Initialized Data segment
  static int s_integer_uninitialized; // stored in Uninitialized Data segment (BSS)

  /* Stack: Stores local variables, function parameters, and return addresses,
   * managed automatically with function calls and returns.
   * */
  int integer = 888; // stored in stack

  printf("\nVariables defined in func1():\n");
  printf("s_integer_initialized: %d\n", s_integer_initialized);
  printf("s_integer_uninitialized: %d\n", s_integer_uninitialized);
  printf("local integer: %d\n", integer);

  s_integer_initialized++;
  s_integer_uninitialized++;
  integer++;
  printf("local integer: %d\n", integer);
}
#endif //TUTOR_DATA_SEGMENT_BSS

