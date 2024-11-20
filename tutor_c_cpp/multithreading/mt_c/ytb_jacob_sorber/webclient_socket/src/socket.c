#include "socket.h"

#include <stdarg.h> // variadic func
#include <errno.h>

void err_n_die(const char *fmt, ...)
{
    int errno_save = errno;
    va_list ap;
    va_start(ap, fmt);
    fprintf(stderr, "Error: ");
    fprintf(stderr, fmt, ap);
    fprintf(stderr, ": %s\n", strerror(errno_save));
    va_end(ap);
    exit(1);
}