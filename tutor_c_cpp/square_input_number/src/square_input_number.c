/**
 * @file square_input_number.c
 * @brief Calculates and displays the square of numeric input from the user
 */

#include <stdio.h>

// Generic function to handle both integer and floating-point numbers
#define square_number(x) _Generic((x), \
    int: square_int, \
    double: square_double \
)(x)

// Type-specific processing functions
static int square_int(int x) { return x * x; }

static double square_double(double x) { return x * x; }

int main()
{
    int i_num;
    double d_num;

    printf("Processing different numeric types:\n\n");
    
    // Handle integer input
    printf("1. Integer input:\n");
    printf("Enter an integer: ");
    scanf("%d", &i_num);
    printf("The square of %d is %d\n\n", i_num, square_number(i_num));
    
    // Handle floating-point input
    printf("2. Floating-point input:\n");
    printf("Enter a number: ");
    scanf("%lf", &d_num);
    printf("The square of %.2f is %.2f\n", d_num, square_number(d_num));
    
    return 0;
}
