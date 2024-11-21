/**
 * @file code2.c
 * @brief Calculates the square of an integer input from the user
 * @author [Your Name]
 * @date [Date]
 * @license [License]
 */

#include <stdio.h>

/**
 * @brief Calculates the square of an integer input from the user
 * @return 0 on success
 */
int main()
{
    int num;

    // Prompt the user for input
    printf("Enter an integer : ");

    // Read the integer input from the user
    scanf("%d", &num);

    // Calculate the square of the input number
    int square = num * num;

    // Print the result
    printf("The square of %d is %d\n", num, square);

    return 0;
}
