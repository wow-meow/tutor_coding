#include "function_pointers.h"

/**
 * @brief Performs an operation on two integers using a function pointer.
 *
 * @param op A function pointer to the operation to be performed.
 *           The function should take two int parameters and return an int.
 * @param a The first integer operand.
 * @param b The second integer operand.
 * @return The result of the operation applied to a and b.
 */
int do_operation(op_two_int op, int a, int b)
{
    if (op == NULL) {
        return 0;  // Or handle error appropriately
    }
    // Call the function pointed to by 'op' with arguments 'a' and 'b'
    return op(a, b);
}

int add(int a, int b) 
{
    return a + b;
}

int mult(int a, int b) 
{
    return a * b;
}

/** 
 * Function pointer type: int (*)(int, double, double)
 * 'foo' is a function that takes a function pointer and two ints as parameters
 * It returns a pointer to an int
 * The function pointer parameter matches the type described above
 * Usage: int *result = foo(someOperation, 5, 10);
 *
 * 'op' is a function pointer parameter that represents an operation
 * It takes an int and two doubles as input and returns an int 
 * This allows for flexible use of different operations within the 'foo' function
 * 
 * @param op A function pointer to the operation to be performed.
 *           The function should take two int parameters and return an int.
 * @param a The first integer operand.
 * @param b The second integer operand.
 * @return The result of the operation applied to a and b.  
 * 
 * @example
 * int (*foo) (int (*op) (int, double, double), int, int);
 * int result = foo(someOperation, 5, 10);
 * 
 * @note
 * The function pointer type 'int (*)(int, double, double)' 
 * matches the type of the function 'someOperation'
 * 
 * indentifier: foo
 * right: nothing
 * left: pointer!
 * pop out the paranthesis
 * right: function pointer type 'int (*)(int, double, double)' and takes two int parameters
 * left: returns int pointer
 *
 * Therefore, foo is a pointer to a function that takes a function pointer and two int parameters and 
 * returns a pointer to an int
 */ 
int *(*foo) (int (*op) (int, double, double), int, int);