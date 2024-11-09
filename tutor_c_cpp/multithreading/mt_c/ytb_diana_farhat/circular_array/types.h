//
// Created by lh on 11/7/2024.
//

#ifndef TYPES_H
#define TYPES_H

/**
 * number in power notation or generalized scientific notation
 * coefficient * base^exponent
 */
typedef struct PowerNotation {
    double coefficient;
    double base;
    int exponent;
    double value_in_decimal;
} PowerNotation;

#endif //TYPES_H
