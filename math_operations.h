/**
 * @file math_operations.h
 * @brief Header file for basic math operations.
 */

#ifndef MATH_OPERATIONS_H
#define MATH_OPERATIONS_H

/**
 * @brief Adds two integers.
 * @param a First integer.
 * @param b Second integer.
 * @return Sum of a and b.
 */
int add(int a, int b);

/**
 * @brief Subtracts two integers.
 * @param a First integer.
 * @param b Second integer.
 * @return Difference between a and b.
 */
int subtract(int a, int b);

/**
 * @brief Multiplies two integers.
 * @param a First integer.
 * @param b Second integer.
 * @return Product of a and b.
 */
int multiply(int a, int b);

/**
 * @brief Divides two integers.
 * @param a First integer (dividend).
 * @param b Second integer (divisor).
 * @return Quotient of a divided by b. Returns 0 if b is 0.
 */
int divide(int a, int b);

#endif /* MATH_OPERATIONS_H */