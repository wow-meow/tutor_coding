/**
 * Function Overloading
 *
 * [Does C support function overloading? - GeeksforGeeks](https://www.geeksforgeeks.org/does-c-support-function-overloading/)
 * (void *) + type casting + 'choice' argument
 *
 * [_Generics Keyword in C - GeeksforGeeks](https://www.geeksforgeeks.org/_generic-keyword-c/)
 * The _Generic keyword in C is used to implement a generic code that can execute statements
 * based on the type of arguments provided. It can be implemented with C macros to imitate
 * function overloading. The _Generic keyword was first introduced in C11 Standard.
 *
 * [_Generic 選擇](https://openhome.cc/Gossip/CGossip/_Generic.html)
 * */

#include <stdio.h>
#include <math.h> // cbrt, cbrtl, etc. cubic root
#include <string.h>

#define EXPR_HELLOWORLD "Hello, World!"

// _Generic is NOT type-safe, very dangerous, hard to debug
#define WAT(_1) _Generic((_1),         \
    float: 2.0, char *: "XD", int: 10, \
    default: 'a')

#define cbrt(_1) _Generic((_1),       \
    long double: cbrtl, float: cbrtf, \
    default: cbrt)(_1)

// compiler error ??
#define myprint_one_arg(_1) _Generic((_1),                       \
    int: myprint_int, char: myprint_char, double: myprint_double)(_1)

#define myprint_two_arg(_1, _2)                                  \
    _Generic((_1), int: _Generic((_2),                           \
        int: myprint_int_int,     double: myprint_int_double),   \
                double: _Generic((_2),                           \
        int: myprint_double_int,  double: myprint_double_double))(_1, _2)

#define myprint_three_arg(_1, _2, _3)                                            \
    _Generic((_1), int: _Generic((_2), int: _Generic((_3),                       \
            int: myprint_int_int_int,       double: myprint_int_int_double),     \
                                    double: _Generic((_3),                       \
            int: myprint_int_double_int,    double: myprint_int_double_double)), \
                double: _Generic((_2), int: _Generic((_3),                       \
            int: myprint_double_int_int,    double: myprint_double_int_double),  \
                                    double: _Generic((_3),                       \
            int: myprint_double_double_int, double: myprint_double_double_double)))(_1, _2, _3)

void myprint_int(int a) {
    printf("myprint_int(int %d)\n", a);
}

void myprint_char(char a) {
    printf("myprint_char(char %c)\n", a);
}

void myprint_double(double a) {
    printf("myprint_double(double %f)\n", a);
}

void myprint_int_int(int a, int b) {
    printf("myprint_int_int(int %d, int %d)\n", a, b);
}

void myprint_int_double(int a, double b) {
    printf("myprint_int_double(int %d, double %f)\n", a, b);
}

void myprint_double_int(double a, int b) {
    printf("myprint_double_int(double %f, int %d)\n", a, b);
}

void myprint_double_double(double a, double b) {
    printf("myprint_double_double(double %f, double %f)\n", a, b);
}

void myprint_int_int_int(int a, int b, int c) {
    //typename(a)
    printf("(int %d, int %d, int %d)\n", a, b, c);
}

// unscoped enumeration
typedef enum MyType {
    BOOL,
    CHAR, UCHAR, SIGNED_CHAR,
    INT, SHORT, LONG,
    UINT, USHORT, ULONG,
    FLOAT, DOUBLE,
    /* ... */
    STRING,
    INT_POINTER,
    FLOAT_POINTER, DOUBLE_POINTER,
    OTHER_TYPE,
} myType_t;

void print_arg_wrt_type(void *argptr, myType_t type) {
    printf("\nprint_arg_wrt_type(void *arg, myType_t type)\n");

    union Values {
        char c;
        int i;
        float fl;
        double db;
        char *s;
        int *p_int;
        float *p_fl;
        double *p_db;
    };

    switch (type) {
        case CHAR: // char, int
            char c = *((char *)argptr);
            printf("(char) %c\n", c);
            break;
        case INT:
            int i = *((int *)argptr);
            printf("(int) %d\n", i);
            break;
        case FLOAT:
            float fl = *((float *)argptr);
            printf("(float) %.2f\n", fl);
            break;
        case DOUBLE:
            double db = *((double *)argptr);
            printf("(double) %.2f\n", db);
            break;
        case STRING:
            char *s = (char *)argptr;
            printf("(string) %s\n", s);
            break;
        case INT_POINTER:
            int *p_int = (int *)argptr;
            printf("(int *) 0x%p, (int) %d\n", p_int, *p_int);
            break;
        case FLOAT_POINTER:
            float *p_fl = (float *)argptr;
            printf("(float *) 0x%p, (float) %.2f\n", p_fl, *p_fl);
            break;
        case DOUBLE_POINTER:
            double *p_db = (double *)argptr;
            printf("(double *) 0x%p, (double) %.2f\n", p_db, *p_db);
            break;
        default:
            fprintf(stderr, "ERROR: Unknown type that is NOT registered in myType_t enumeration!\n");
    }
}

#define GET_TYPENAME(_1) _Generic((_1),                   \
    _Bool: BOOL,           unsigned char: UCHAR,          \
     char: CHAR,             signed char: SIGNED_CHAR,    \
    short: SHORT,         unsigned short: USHORT,         \
      int: INT,             unsigned int: UINT,           \
        /* ... */                                         \
   char *: STRING,                 int *: INT_POINTER,    \
   float *: FLOAT_POINTER,      double *: DOUBLE_POINTER, \
  default: OTHER_TYPE)

int main(void) {
    printf("== _Generic(expr, type1: value1, ..., typeN, valueN) == \n");

    float f_val = 0.f;
    int num = _Generic(f_val, int: 1,
                            float: 2,
                           char *: 3,
                          default: 0);
    printf("%d\n", num);

    printf("%s\n", WAT(EXPR_HELLOWORLD));

    myprint_one_arg(3.2);
    myprint_one_arg(3);
    myprint_one_arg('a');

    myprint_two_arg(3.2, 2);
    myprint_two_arg(3, 1);
    myprint_two_arg(1, 10.2);
    myprint_two_arg(1.8, 10.2);

    double x = 8.0;
    const float y = 3.375;
    printf("cbrt(8.0) = %f\n", cbrt(x));
    printf("cbrtf(3.375) = %f\n", cbrt(y));

    printf("\n=== _Generic: auto-check type ===\n");

    char fmt[30] = {0};
    //int val_chktype = 256;
    //unsigned char val_chktype = 256;
    signed char val_chktype = 128;

    if (GET_TYPENAME(val_chktype) == INT) {
        strcat(fmt, "Hello, World!");
        strcat(fmt, " %d, size: %llu\n");
        printf(fmt, val_chktype, sizeof(int));
        fmt[0] = '\0'; // reset string to empty
    } else if (GET_TYPENAME(val_chktype) == UCHAR) {
        printf("(uchar) %c, its int value: %d, size: %llu\n",
            val_chktype, (int) val_chktype, sizeof(unsigned char));
    } else if (GET_TYPENAME(val_chktype) == SIGNED_CHAR) {
        printf("(signed char) %c, its int value: %d, size: %llu\n",
            val_chktype, (int) val_chktype, sizeof(signed char));
    }

    return 0;
}
