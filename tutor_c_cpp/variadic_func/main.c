/**
 * Variable Length Argument List -- Variadic Function
 *
 * [不定長度引數](https://openhome.cc/Gossip/CGossip/Variable-lengthArgument.html)
 * va_list 一個特殊的型態（type），在 va_start、 va_arg 與 va_end 三個巨集（macro）中當作參數使用。
 * va_start 啟始不定長度引數的巨集，第一個引數是 va_list，第二個引數是最後一個具名參數。
 * va_arg 讀取不定長度引數的巨集。
 * va_end 終止不定長度引數的巨集。
 *
 * [Variadic Functions Explained. The Ultimate Guide to Variable… | by Samuel Selasi | Medium](https://onepunchcoder.medium.com/variadic-functions-explained-fd3b4ab6fd84)
 *
 * */


//#define SCANF_VARIADIC

#include <stdio.h>
#include <stdarg.h>

void simple_printf(const char *fmt, ...) {
    printf("\nsimple_printf(const char *fmt, ...)\n");
    va_list ap;
    va_start(ap, fmt);
    unsigned int i = 0;
    while ( *fmt != '\0') {
        if (*fmt == 'd') {
            int arg = va_arg(ap, int);
            printf("[%d] %d\n", i, arg);
        } else if (*fmt == 'f') {
            double arg = va_arg(ap, double);
            printf("[%d] %.2f\n", i, arg);
        } else if (*fmt == 'c') {
            // A 'char' variable will be promoted to 'int'
            // A character literal in C is already 'int' by itself
            int arg = va_arg(ap, int);
            printf("[%d] %c\n", i, arg);
        } else {
            printf("[%d] ?\n");
        }
        ++fmt;
    }
    va_end(ap);
}

void print_ints_arr(int len, int arr[]) {
    printf("\nprint_ints_arr(int len, int arr[]):\n");
    for (int i = 0; i < len; ++i) {
        printf("[%d] %d\n", i, arr[i]);
    }
}

void print_ints(int num, ...) {
    printf("\nprint_ints(int num, ...):\n");
    va_list argptr;
    va_start(argptr, num);
    for (int i = 0; i < num; ++i) {
        printf("[%d] %d", i, *((int *) argptr));
        int arg = va_arg(argptr, int);
        printf(" | %d\n", arg);
    }
    va_end(argptr);
}

void print_doubles(int num, ...) {
    printf("\nprint_doubles(int num, ...):\n");
    va_list argptr;
    va_start(argptr, num);
    for (int i = 0; i < num; ++i) {
        printf("[%d] %.2f", i, *((double *) argptr));
        double arg = va_arg(argptr, double);
        printf(" | %.2f\n", arg);
    }
    va_end(argptr);
    printf("\n");
}

double average(int num, ...) {
    double sum = .0;
    va_list argptr;
    va_start(argptr, num);
    for (int i = 0; i < num; ++i) {
        sum += va_arg(argptr, double);
    }
    va_end(argptr); // clean up va_list
    return sum / num;
}

double average_int(int num, ...) {
    double sum = .0;
    va_list argptr;
    va_start(argptr, num);
    for (int i = 0; i < num; ++i) {
        sum += va_arg(argptr, int);
    }
    va_end(argptr); // clean up va_list
    return sum / num;
}

void print_retval(double (*funcptr)(int, ...), int num, ...) {
    printf("\nprint_retval(double (*funcptr)(int, ...), int num, ...):\n");
    va_list argptr;
    //printf("num: %d, retval: %.2f\n", num, funcptr(num, args));
    //printf("num: %d, retval: %.2f\n", num, funcptr(num, __VA_ARGS__));
    va_start(argptr, num);
    for (int i = 0; i < num; ++i) {
        printf("[%d] %.2f, ", i, va_arg(argptr, double));
    }
    puts("");
    va_end(argptr);
}

void myprintf(const char *format, ...) {
    printf("\nmyprintf(const char *format, ...):\n");
    va_list argptr;
    va_start(argptr, format);
    int len_formatstr = vfprintf(stdout, format, argptr);
    va_end(argptr);
    printf("len of format str: %d\n", len_formatstr);
}

// the 2nd arg of va_start() is the last fixed (non-variadic) argument
void print_ints_first_given(int num, int first, ...) {
    printf("\nprint_positive_ints(int num, int first, ...):\n");
    va_list argptr;

    printf("for()\n");
    va_start(argptr, first);
    for (int i = 1; i < num; ++i) {
        printf("[%d] %d", i, *((int *) argptr));
        int arg = va_arg(argptr, int);
        printf(" | %d\n", arg);
    }
    va_end(argptr);

    printf("do-while()\n");
    va_start(argptr, first);
    printf("start: %d\n", *argptr);
    int i = 1;
    do {
        printf("[%d] %d", i, *argptr);
        ++i;
        int arg = va_arg(argptr, int);
        printf(" | %d\n", arg);
    } while (i < num);
    va_end(argptr);
}

/**
 * print_strings - Function to print strings
 * @separator: String separator
 * @n: number of strings
 *
 * Return: Formatted string
 */
void print_strings(const char *separator, const unsigned int n, ...) {
    printf("\nprint_strings(char * separator, unsigned int n, ...):\n");
    unsigned int i;
    char *str;
    va_list argptr;

    va_start(argptr, n);

    for (i = 0; i < n; i++) {
        str = va_arg(argptr, char *);

        if (separator != NULL && i > 0) {
            printf("%s", separator);
        }

        if (str == NULL) {
            printf("(nil)");
        } else {
            printf("%s", str);
        }
    }

    va_end(argptr);
    putchar('\n');
}

void print_strings_last_null(const char *separator, ...) {
    printf("\nprint_strings_last_null(char * separator, ...):\n");
    va_list argptr;
    va_start(argptr, separator);
    unsigned int cnt;
    for (cnt = 0; ; ++cnt) {
        if (separator != NULL && cnt > 0) {
            printf("%s", separator);
        }

        printf("( %s ) ", (char *) argptr);
        // get the current argument which the pointer argptr currently points to,
        // and update argptr, i.e., argptr += 1
        char *str = va_arg(argptr, char *);
        if (str != NULL) {
            printf("%s", str);
        } else {
            printf("(nil)");
            break;
        }
    }
    va_end(argptr);
    putchar('\n');
    printf("cnt of strings: %d\n", cnt);
}

int main(void) {
    printf("== Variadic Function ==\n");

    int a1 = 3, a2 = 1, a3 = 5, a4 = 9, a5 = 7, a6 = 11, a7 = 17;
    print_ints_arr(4, (int[]) {a1, a2, a3, a4});
    print_ints_arr(2, (int[]) {a5, a6});
    print_ints(4, a1, a2, a3, a4);
    print_ints(2, a5, a6);
    print_ints_first_given(7, a1, a2, a3, a4, a5, a6, a7);

    double f_val1 = 3.3, f_val2 = 1.1, f_val3 = 5.5, f_val4 = 9.9, f_val5 = 7.7, f_val6 = 11.11, f_val7 = 17.17;
    print_doubles(4, f_val1, f_val2, f_val3, f_val4);

    printf("average: %.2f\n", average(5, 1.2, 3.1, 5.2, 17.2, 8.9));

    int a = 3;
    int b = 15;
    myprintf("average( %d, %d ) --> %.2f\n",
        a, b, average_int(2, a, b));
    myprintf("average( %d, %d ) --> %.2f\n",
        a, b, average(2, (double) a, (double) b));
    myprintf("average( %.2f, %.2f ) --> %.2f\n",
        (double) a, (double) b, average(2, (double) a, (double) b));

    print_retval(average, 7, 1.2, 3.1, 5.2, 17.2, 8.9, 6.6, 7.7);

#ifdef SCANF_VARIADIC
    printf("Please input: %%d %%d\n");
    scanf("%d %d", &a1, &a2);
    printf("Your input: %d %d\n", a1, a2);
#endif // SCANF_VARIADIC

    print_strings(", ", 2, "Jay", "Django");

    print_strings_last_null(", ", '\0');
    print_strings_last_null(", ", NULL);
    print_strings_last_null(", ", "Jay", "Django", NULL);
    print_strings_last_null(", ", "Jay", "Django", '\0');
    //print_strings_last_null(", ", "Jay", "Django", "\0"); // "\0" != '\0'
    //print_strings_last_null(", ", "Jay", "Django", );
    //print_strings_last_null(", ", "");

    simple_printf("dcff", 3, 'a', 1.999, 42.5);

    return 0;
}
