#include <stdio.h>
#include <stdarg.h>
#include <assert.h>

void print_gfg(void) {
    printf("Geeks-for-Geeks\n");
}

int multiply(const int a, const int b) { return a * b; }

/**
 * Test multiply function
 */
void test_multiply() {
    // Test case 1: Positive numbers
    assert(multiply(2, 3) == 6);
    printf("multiply(2, 3) = %d\n-> PASSED\n", multiply(2, 3));

    // Test case 2: Zero
    assert(multiply(0, 5) == 0);
    printf("multiply(0, 5) = %d\n-> PASSED\n", multiply(0, 5));

    // Test case 3: Negative numbers
    assert(multiply(-2, 4) == -8);
    printf("multiply(-2, 4) = %d\n-> PASSED\n", multiply(-2, 4));
}

/**
 * Print the return value of a function
 * @param funcptr
 * @param x
 * @param y
 */
void print_retval(int (*funcptr)(int, int), int x, int y) {
    puts("\nprint_retval(int (*funcptr)(int, int), int x, int y)");
    printf("retval: %d\n", funcptr(x, y));
}

// Mock function for testing
int mock_func(int x, int y) { return x + y; }

/**
 * Test function for print_retval
 */
void test_print_retval()
{
    int x = 5;
    int y = 3;
    print_retval(mock_func, x, y);
    // Assert the expected output
    assert(mock_func(x, y) == 8);
}

void print_one_int(const char *str, int val);

void print_one_int(const char *str, int val) {
    printf("\nprint_one_int(const char *str, int val)\n");
    printf(str, val);
}

void print_one_float(const char *str, float val) {
    printf("\nprint_one_float(const char *str, float val)\n");
    printf(str, val);
}

void print_one_double(const char *str, double val) {
    printf("\nprint_one_float(const char *str, double val)\n");
    printf(str, val);
}

typedef struct _Cell {
    float f;
    double lf;
    int d;
    unsigned int ua[2];
    char* s;
} cell_t;

void print_cell_variadic(char *s, ...) {
    va_list ap;
    cell_t c;
    va_start(ap, s);
    c = va_arg(ap, cell_t);
    printf(s, c.s, c.f, c.lf, c.d, c.ua[0], c.ua[1]);
    va_end(ap);
}

void print_cell(char* s, cell_t c) {
    printf(s, c.s, c.f, c.lf, c.d, c.ua[0], c.ua[1]);
}

typedef void (*func_printcell_t)(char *, cell_t);
typedef void (*func_print_variadic_t)(char *, ...);

int main(int argc, char *argv[])
{
    test_multiply();

    return 0;

    test_print_retval();

    printf("\nYou've entered %d arguments.\n", argc);
    for (int i = 0; i < argc; ++i) {
        printf("[%d] %s\n", i, argv[i]);
    }
    puts("");

    printf("\n== Learn Function Pointer ==\n");
    print_gfg();

    // In C/C++, name of a function can be used to find address of function.
    printf("main() addr: 0x%p\n", main);
    printf("print_gfg() addr: 0x%p\n", print_gfg);
    printf("multiply() addr: 0x%p\n", multiply);

    // define a function pointer
    //int (*funcptr1)(const int, const int);
    int (*funcptr1)(int, int);

    /* "functionPtr = &addInt;" can also be written(and often is) as "functionPtr = addInt;"
     * which is also valid since the standard says that a function name in this context
     * is converted to the address of the function.
     * */
    //funcptr1 = &multiply;
    funcptr1 = multiply;

    int a = 3;
    int b = 15;
    printf("multiply(%d, %d) = %d\n", a, b, funcptr1(a, b));
    print_retval(multiply, a, b);

    printf("\n=== Safe?: Cast a variadic function pointer to "
           "a function pointer with finite arguments ===\n");

    printf("\n==== NOT Safe when calling due to type conversion ====\n");

    typedef void (*funcptr_variadic_t)(const char *s, ...);
    funcptr_variadic_t funcptr = (funcptr_variadic_t) print_one_float;
    float fl_val = 0.5f;
    funcptr("%.2f\n", (double) fl_val);
    funcptr = (funcptr_variadic_t) print_one_double;
    double db_val = 0.5;
    funcptr("%.2f\n", db_val);

    printf("\n==== Safe when calling W/O type conversion ====\n");

    cell_t c = {
        .f = 3.14,
        .lf = 3.1415,
        .d = -42,
        .ua = {0, 42},
        .s = "print a cell:",
    };

    /* swap! */
    func_print_variadic_t funcA = (func_print_variadic_t) print_cell;
    func_printcell_t funcB = (func_printcell_t) print_cell_variadic;

    print_cell("%s %f %lf %d %u %u\n", c);
    print_cell_variadic("%s %f %lf %d %u %u\n", c);
    funcA("%s %f %lf %d %u %u\n", c);
    funcB("%s %f %lf %d %u %u\n", c);

    return 0;
}
