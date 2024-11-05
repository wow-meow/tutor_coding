#include <stdio.h>
#include <stdlib.h>

int initialize_array_pointer(void);
int pointer_to_array_vs_array_of_pointer(void);

int main(void)
{
    int err = 0;
    //err = initialize_array_pointer();
    err = pointer_to_array_vs_array_of_pointer();
    return err;
}

int initialize_array_pointer(void)
{
    printf("== How to declare and initialize an array incl. cstring ==\n\n");

    /**
     * the pointer points to dynamically allocated heap memory,
     * - malloc, free
     **/

    int idx;

    /**
     * simple initialization of array pointers
     * */

    char *str1 = NULL;
    printf("\nstr1 at 0x%p: %s\n", str1, str1);

    int *arr1 = NULL; // uninitialized pointer
    // access a memory location that may not be accessible or allocated
    // arr1[0] = 1; // <-- highly likely to throw an error

    /**
     * The problem with this code is that arr1 is an uninitialized pointer.
     * When you declare int *arr1;, it creates a pointer variable but it doesn't point
     * to any valid memory location.
     *
     * Trying to access arr1[0] is undefined behavior as it attempts to read from
     * a memory location that may not be accessible or may not even be allocated.
     * You might get a segmentation fault or other unexpected results depending on
     * what random memory address arr1 is holding.
     *
     * If you want to use arr1 to access an integer value, you should first initialize
     * it to point to a valid memory location, such as an integer variable or
     * dynamically allocated memory.
     **/

    /**
     * c-string literals stored in read-only memory
     *
     * The literal "Hello" is of the type 'char (*)[6]', taking (5 + 1) spaces,
     * the additional 1 is '\0', while str1 is of 'char *' type.
     * */

    //str1 = &"Hello"; // <-- Warning

    /**
     * Writing to the read-only memory segment is an illegal write operation
     * that leads to Segementation fault.
     * */

    //str1[0] = 'w'; // <-- Segmentation Fault

    /**
     * the correct ways of pointer initialization
     **/

    char str0[] = "Hello, World!";
    str1 = str0; // points to a valid initialized cstring
    printf("\nstr1 at 0x%p: %s\n", str1, str1);

    /**
     * The array[] use the stack memory, so is not that dangerous as an unintialized pointers.
     *
     * A character array (cstring) initialized with {}, that is, an empty intializer list, has no '\0' null terminator.
     * No '\0' null terminator in cstring will lead to an undefined behavior.
     *
     * Accessing an integer array that is initialized with {} will result in an undefined behavior.
     **/

    char str2[] = {}; // undefined behavior
    //char str2[]; // <-- compile error: array size missing
    printf("\nstr2 at 0x%p: %s\n"
           "<-- undefined behavior, auto-initialized "
           "with 'str1' the latest assigned (char *) pointer\n",
           str2, str2);

    /**
     * when the array length is not defined, the array is always NULL,
     * so following ways of initialization are the same: {}
     **/

    int arr2[] = {}; // <-- not null, random value in stack memory
    if (arr2 == NULL) { return 1; }
    idx = 1;
    arr2[idx] = 99; // undefined behavior, but it may throw no error.
    printf("\narr2 at 0x%p: [%d] %d\n"
           "<-- write to writable memory segment in stack memory\n",
        arr2, idx, arr2[idx]);
    idx = 0;
    printf("\narr2 at 0x%p: [%d] %d\n"
           "<-- uncontrollable random value stored in stack memory\n",
        arr2, idx, arr2[idx]);

    /**
     * Declare an array with a given length and initialize with
     * an empty initializer list.
     *
     * For number arrays, an empty initializer list for a well-defined array
     * is identical to an all-zero initializer list. However, for c-strings,
     * an empty initializer list leads to undefined behavior,
     * while "", {0} and {'\0'} set the c-string an empty string
     * containing a null terminator at index 0, the very beginning of the string.
     **/

    const int len_arr3 = 2;
    int arr3[len_arr3] = {};
    for (int i = 0; i < len_arr3; ++i) {
        printf("arr3 at 0x%p: [%d] %d\n", arr3, i, arr3[i]);
    }
    printf("<-- An empty initializer list for a well-defined array "
           "is identical to an all-zero initializer list\n");

    idx = len_arr3;
    printf("\narr3 at 0x%p: [%d] %d\n"
           "<-- gets random value when index exceeds MAX\n",
           arr3, idx, arr3[idx]);

    /**
     * init a (char str[]) with an empty c-string "", the same as init with
     * {'\0'} and {0},  that is, null terminator.
     * */

    char str3[] = {0};
    printf("\nstr3 at 0x%p: %s <-- an empty string\n", str3, str3);

    for (int i = 0; i < 50; ++i) {
        str3[i] = 'W';
    }
    printf("\nAfter manually replace the null terminator with a real char %c,\n"
           "str3 at 0x%p: %s\n"
           "<-- becomes not properly terminated by null terminator, "
           "so some random values appended\n", str3[0], str3, str3);

    str3[1] = '\0';
    printf("\nstr3 at 0x%p: %s\n"
           "<-- manually appended the null terminator, so it looks fine\n",
        str3, str3);

    /**
     * - "the address of an array" equals to "the address of the head entry of the array"?
     * - in C, a pointer to an array Vs. an array of pointer
     **/

    return 0;
}

/**
 *
 * @return int
 *
 * - "the address of an array" equals to "the address of the head entry of the array"?
 * - the address of a well-defined array stored in stack memory is identical to the addr. of
 *
 * - in C, a pointer to an array Vs. an array of pointer
 */
int pointer_to_array_vs_array_of_pointer(void)
{
    const int N = 5; // not a VLA (Variable Length Array), length is fixed at compile-time

    printf("\n=== arr1_stack[] in stack memory ===\n");

    int arr1_stack[N] = {};
    for (int i = 0; i < N; ++i) {
        arr1_stack[i] = 9;
    }

    int (*p1_arr1_stack)[N] = &arr1_stack; // both are 'int (*)[N]'
    int *p2_arr1_stack = &arr1_stack; // <-- warning: 'int *' vs 'int (*)[N]'
    int *p3_arr1_stack = arr1_stack; // both are 'int *'
    int *p4_arr1_stack = &arr1_stack[0]; // both are 'int *'
    int (*p5_arr1_stack)[N] = arr1_stack; // 'int (*)[N]' vs 'int [N]' ~ 'int *'

    printf("\n0x%p : &arr1_stack 'int (*)[N]'\n"
           "0x%p : arr1_stack 'int [N]' may decay to 'int *'\n"
           "0x%p : &arr1_stack[0] 'int *'\n",
           &arr1_stack, arr1_stack, &arr1_stack[0]);

    printf("\n0x%p : p1_arr1_stack 'int (*)[N]'\n"
           "0x%p : *p1_arr1_stack 'int [N]' may decay to 'int *'\n",
           p1_arr1_stack, *p1_arr1_stack);

    printf("\n0x%p : p2_arr1_stack 'int *'\n"
           "0x%p : *p2_arr1_stack 'int'\n",
           p2_arr1_stack, *p2_arr1_stack);

    printf("\n0x%p : p3_arr1_stack 'int *'\n"
           "0x%p : *p3_arr1_stack 'int'\n",
           p3_arr1_stack, *p3_arr1_stack);

    printf("\n0x%p : p4_arr1_stack 'int *'\n"
           "0x%p : *p4_arr1_stack 'int'\n",
           p4_arr1_stack, *p4_arr1_stack);

    printf("\n0x%p : p5_arr1_stack 'int (*)[N]'\n"
           "0x%p : *p5_arr1_stack 'int [N]'\n",
           p5_arr1_stack, *p5_arr1_stack);

    printf("\n=== arr1_heap[] in heap memory ===\n");

    int *arr1_heap = (int *) malloc(N * sizeof(int));
    for (int i = 0; i < N; ++i) {
        arr1_heap[i] = 9;
    }

    int (*p1_arr1_heap)[N] = &arr1_heap; // <-- warning: 'int (*)[N]' vs 'int **'
    int *p2_arr1_heap = &arr1_heap; // <-- warning: 'int *' vs  'int **'
    int *p3_arr1_heap = arr1_heap; // both are 'int *'
    int *p4_arr1_heap = &arr1_heap[0]; // both are 'int *'
    int (*p5_arr1_heap)[N] = arr1_heap; // 'int (*)[N]' vs 'int *'

    /**
     * - the declared type defines the pointer arithmetics
     * - the assignment defines the value the value
     * - If the rvalue in the assignment to the variable is an address
     *   and its declared type is some sort of pointer,
     *   then deferencing the variable gives the value stored at such address,
     *   in other words, it gives the value such address points to.
     **/

    printf("\n0x%p : &arr1_heap 'int **'\n"
           "0x%p : arr1_heap 'int *'\n"
           "0x%p : &arr1_heap[0] 'int *'\n",
           &arr1_heap, arr1_heap, &arr1_heap[0]);

    printf("\n0x%p : p1_arr1_heap 'int (*)[N]'\n"
           "0x%p : *p1_arr1_heap 'int [N]' mostly decays to 'int *'\n",
           p1_arr1_heap, *p1_arr1_heap);

    printf("\n0x%p : p2_arr1_heap 'int *'\n"
           "0x%p : *p2_arr1_heap 'int'\n",
           p2_arr1_heap, *p2_arr1_heap);

    printf("\n0x%p : p3_arr1_heap 'int *'\n"
           "0x%p : *p3_arr1_heap 'int'\n",
           p3_arr1_heap, *p3_arr1_heap);

    printf("\n0x%p : p4_arr1_heap 'int *'\n"
           "0x%p : *p4_arr1_heap 'int'\n",
           p4_arr1_heap, *p4_arr1_heap);

    printf("\n0x%p : p5_arr1_heap 'int (*)[N]'\n"
           "0x%p : *p5_arr1_heap 'int [N]'\n",
           p5_arr1_heap, *p5_arr1_heap);

    /**
     * int **ptr = &arr_heap;
     *
     * - ptr 'int **' (double pointer to int) stores the addr. of a 'int *' int pointer
     * - This 'int *' int pointer stores the addr. of the first element of an int array,
     *   which is identical to the addr of the array.
     **/

    printf("\ntype conversion: 'int (*)[N]' <-- 'int **'\n"
           "a pointer to N-size array p1_arr1_heap stores addr. of a pointer to arr1_heap:\n"
           "0x%p\n"
           "this addr. stores the addr. of arr1_heap:\n"
           "0x%p\n"
           "0x%p\n",
           p1_arr1_heap, *p1_arr1_heap, *(p1_arr1_heap + 1));

    printf("\ntype conversion: 'int *' <-- 'int **'\n"
           "pointer p2_arr1_heap stores addr. of a pointer to arr1_heap:\n"
           "0x%p\n"
           "this addr. stores the addr. of arr1_heap:\n"
           "0x%p\n",
           p2_arr1_heap, *p2_arr1_heap);

    printf("\np3_arr1_heap: 'int *' that stores addr. of first element of arr1_heap:\n"
           "0x%p\n", p3_arr1_heap);
    printf("\np4_arr1_heap: 'int *' that stores addr. of first element of arr1_heap:\n"
           "0x%p\n", p4_arr1_heap);


    printf("\n=== stack vs heap ===\n");

    printf("\naddr. of a stack allocated array 0x%p\n"
           "--> 'int (*)[N]': 0x%p\n", arr1_stack, &arr1_stack);
    printf("\naddr. of a heap allocated array (a pointer 'int *' 0x%p)\n"
           "--> 'int **': 0x%p\n", arr1_heap, &arr1_heap);

    /**
     * Address Values
     * - In C, when you have an array like `arr1_stack`, the expressions `&arr1_stack`,
     *   `arr1_stack`, and `&arr1_stack[0]` often have the same numerical address value when
     *   printed using %p in printf. // %p -- (void *)
     *
     * - The reason is that an array name (`arr1_stack`) in most contexts "decays" into a
     *   pointer to its first element. So `arr1_stack` is treated the same as
     *   `&arr1_stack[0]` in terms of the address they represent.
     *
     * - The expression `&arr1_stack` gives the address of the entire array. However, the
     *   address of the entire array and the address of its first element are the same
     *   in terms of the numerical value.
     *
     * Type Differences
     *
     * - `&arr1_stack`: The type of `&arr1_stack` is a pointer to an array of N integers
     *   (`int (*)[N]`). When you perform pointer arithmetic on `&arr1_stack`, the
     *   increment or decrement is based on the size of the entire array. For example,
     *   if p = `&arr1_stack` and you do p++, the pointer p will move forward by the
     *   size of the entire array (N * sizeof(int)).
     *
     * - `arr1_stack`: When used in most pointer - related contexts, `arr1_stack` decays
     *   to a pointer to its first element. So its type is effectively a pointer to an
     *   integer (`int *`). When you perform pointer arithmetic on `arr1_stack` (or the
     *   decayed pointer), an increment (`arr1_stack`++ which is not recommended as it
     *   changes the array name) or decrement moves the pointer to the next or
     *   previous integer element. That is, it moves forward or backward by
     *   sizeof(int) bytes.
     *
     * - `&arr1_stack[0]`: The type of `&arr1_stack[0]` is a pointer to an integer (int
     *   *). Pointer arithmetic on `&arr1_stack[0]` is the same as on the decayed
     *   `arr1_stack` pointer, moving by sizeof(int) bytes for each increment or
     *   decrement.
     *
     **/

    printf("\n=== pointer arithmetics and address values about an array on stack ===\n");

    // Print the addresses
    printf("\n0x%p : Address of the array\n", (void *)&arr1_stack);
    printf("\n0x%p : Array name (decayed to pointer to first element)\n", (void *)arr1_stack);
    printf("\n0x%p : Address of the first element\n", (void *)&arr1_stack[0]);
    // Demonstrate pointer arithmetic differences
    int (*ptr_arr1_stack)[N] = &arr1_stack;
    int *ptr_elem_arr1_stack = &arr1_stack[0];
    ptr_arr1_stack++;
    ptr_elem_arr1_stack++;
    // The offset for p_arr is larger than p_elem
    printf("\nAfter pointer arithmetic:\n");
    printf("\n0x%p : {int (*)[N]} `ptr_arr1_stack` --> +(N * 4) = 20 = 0x14 from\n"
           "0x%p : {int (*)[N]} `&arr1_stack`\n",
           (void *)ptr_arr1_stack, (void *)&arr1_stack);
    printf("\n0x%p : {int *} `ptr_elem_arr1_stack` --> +4 from\n"
           "0x%p : {int *} `&arr1_stack[0]`\n",
           (void *)ptr_elem_arr1_stack, (void *)(&arr1_stack[0]));

    printf("\n=== pointer arithmetics and address values about an array on heap ===\n");

    // Print the addresses
    printf("\n0x%p : Address of the pointer to the array, the value of a double pointer\n", (void *)&arr1_heap);
    printf("\n0x%p : Array name is a pointer because it's created via malloc\n", (void *)arr1_heap);
    printf("\n0x%p : Address of the first element\n", (void *)&arr1_heap[0]);
    // Demonstrate pointer arithmetic differences
    int **ptr1_arr1_heap = &arr1_heap;
    int (*ptr2_arr1_heap)[N] = &arr1_heap;
    int *ptr_elem_arr1_heap = &arr1_heap[0];
    ptr1_arr1_heap++;
    ptr2_arr1_heap++;
    ptr_elem_arr1_heap++;
    // The offset for p_arr is larger than p_elem
    printf("\nAfter pointer arithmetic:\n");
    printf("\n0x%p : {int **} --> +8 from\n"
           "0x%p : {int **} `&arr1_heap`\n",
           (void *)ptr1_arr1_heap, (void *)&arr1_heap);
    printf("\n0x%p : {int (*)[N]} --> + (N * 4) = 20 = 0x14 from\n"
           "0x%p : {int **} `&arr1_heap`\n",
           (void *)ptr2_arr1_heap, (void *)&arr1_heap);
    printf("\n0x%p : {int *} --> +4 from\n"
           "0x%p : {int *} `arr1_heap` = {int *} `&arr1_heap[0]`\n",
           (void *)ptr_elem_arr1_heap, (void *)arr1_heap);

    return 0;
}