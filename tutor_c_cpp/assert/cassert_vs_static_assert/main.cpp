#include <iostream>
#include "tutor_cassert.h"
#include "tutor_static_assert.h"

int main()
{
    std::cout << "== assert (inherited from C) Vs. static_assert (Cpp only) ==\n\n";

    //test_cassert();
    test_static_assert_cppReference();
    //test_static_assert_gfg();

    return 0;
}