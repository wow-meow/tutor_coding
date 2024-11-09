#include <iostream>

// Include the header file where print_array is declared.
#include "array_utils.h"
#include "template.h"

int main() {
    int arr1[] = {1, 2, 3};
    print_array<int, 3>(arr1);

    double arr2[] = {1.1, 2.2, 3.3, 4.4};
    print_array<double, 4>(arr2);

    MyTemplateClass<int> obj(10);
    obj.printData();

    std::cout << "Sum: " << add(5, 3) << std::endl;

    return 0;
}