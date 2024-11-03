#include <stdio.h>

int main(void)
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

    return 0;
}
