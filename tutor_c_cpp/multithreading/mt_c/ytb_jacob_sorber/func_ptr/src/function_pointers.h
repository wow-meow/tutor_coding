#include <stdio.h>

typedef int (*op_two_int) (int, int);

// Function declarations
int add(int a, int b);
int mult(int a, int b);
int do_operation(op_two_int op, int a, int b);
