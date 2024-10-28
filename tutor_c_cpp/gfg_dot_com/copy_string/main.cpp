#include <iostream>
#include <string>

#include <cstdio>
#include <cstring>
#include <format>
//#include <cstdlib>

/* Function to copy the string
 * */
char *copyCString(char str[], const int len) {
    constexpr int len_buff = 20;
    if (len > len_buff) {
        std::cout << "Error: src string is too long!\n";
        return nullptr;
    }
    auto str_dest = static_cast<char *>(malloc(len_buff * sizeof(char)));
    strcpy(str_dest, str);
    return str_dest;
}

int main() {
    std::cout << "=== How to Copy 'cstring' (char[]) and 'string' in C and CPP ===\n";

    char cstr1[1000];
    float f_val = 99.77777;
    sprintf(cstr1, "%.3f", f_val);
    std::cout << "cstr1: " << cstr1 << "\n";

    int f_val_precision = 4;
    int f_val_width = 8;
    std::cout << std::format("f_val = {0:{2}.{1}f}\n",
                             f_val, f_val_precision, f_val_width);

    return 0;
}
