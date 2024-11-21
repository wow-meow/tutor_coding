/**
 * @file square_input_number.c
 * @brief Calculates and displays the square of numeric input from the user
 */

#include <stdio.h>

// Generic function to handle both integer and floating-point numbers
#define process_number(x) _Generic((x), \
    int: process_int, \
    double: process_double \
)(x)

// Type-specific processing functions
static int process_int(int x) {
    return x * x;
}

static double process_double(double x) {
    return x * x;
}

int main()
{
    int num_int;
    double num_double;

    printf("Processing different numeric types:\n\n");
    
    // Handle integer input
    printf("1. Integer input:\n");
    printf("Enter an integer: ");
    scanf("%d", &num_int);
    printf("The square of %d is %d\n\n", num_int, process_number(num_int));
    
    // Handle floating-point input
    printf("2. Floating-point input:\n");
    printf("Enter a number: ");
    scanf("%lf", &num_double);
    printf("The square of %.2f is %.2f\n", num_double, process_number(num_double));
    
    return 0;
}
