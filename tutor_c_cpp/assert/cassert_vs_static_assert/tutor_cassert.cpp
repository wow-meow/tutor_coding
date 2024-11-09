//
// Created by lh on 11/8/2024.
//

#include "tutor_cassert.h"
#include <iostream>

// uncomment to disable assert()
// #define NDEBUG
#include <cassert>

// Use (void) to silence unused warnings.
#define assertm(exp, msg) assert(((void)msg, exp))

int test_cassert(void)
{
    assert(2 + 2 == 4);
    std::cout << "Checkpoint #1\n";

    assert((void("void helps to avoid 'unused value' warning"), 2 * 2 == 4));
    std::cout << "Checkpoint #2\n";

    // octal (base 8) number start with 0
    assert((010 + 010 == 16) && "Yet another way to add an assert message");
    std::cout << "Checkpoint #3-1\n";

    // hexadecimal (base 16) numbers start with 0x
    assert((0x10 + 0x10 == 32) && "Yet another way to add an assert message");
    std::cout << "Checkpoint #3-2\n";

    //assert(("Success", (2 + 2) % 3 == 1));
    //assert(((2 + 2) % 3 == 1, "Success"));
    assertm((2 + 2) % 3 == 1, "Success");
    std::cout << "Checkpoint #4-1\n";

    // comma is a left operand
    assert((0 == 1, "This message is evaluated but assert doesn't fail"));
    printf("Program continues.\n");
    std::cout << "Checkpoint #4-2\n";

    int a = 0;
    int comma_expr_1 = (a = 2, a + 5);
    int comma_expr_2 = (a = 0, a + 5, a = 2);
    printf("value of comma (left operand) operator expression:\n"
           "%d\n%d\n", comma_expr_1, comma_expr_2);

    assertm(2 + 2 == 5, "Failed"); // assertion fails
    std::cout << "Execution continues past the last assert\n"; // No output

    return 0;
}
