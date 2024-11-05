#include <gnu/libc-version.h>
#include <stdio.h>
#include <stdlib.h> // exit(), EXIT_SUCCESS
#include <unistd.h> // sleep(), usleep()
#include <string.h> // strncpy()

int main(int argc, char *argv[]) {
    // method 1, use macro
    printf("%d.%d\n", __GLIBC__, __GLIBC_MINOR__);

    // method 2, use gnu_get_libc_version 
    printf("GNU libc version: %s\n", gnu_get_libc_version());
    puts(gnu_get_libc_version());

    printf("%d\n", _CS_GNU_LIBC_VERSION);
    //printf("%s\n", _CS_GNU_LIBC_VERSION);

    // method 3, use confstr function
    char version[30] = {0};
    puts(version);

    confstr(_CS_GNU_LIBC_VERSION, version, 30);
    puts(version);

    confstr(_CS_GNU_LIBPTHREAD_VERSION, version, 30);
    puts(version);

    confstr(_CS_PATH, version, 30);
    puts(version);

    int len = 0;
    char str1[30] = {'\0'};
    len = puts(str1);
    printf("len of str1 + '\\n': %d\n", len);
    strncpy(str1, "Hello, World!", sizeof(str1));
    len = puts(str1);
    printf("len of str1 + '\\n': %d\n", len);

    exit(EXIT_SUCCESS);
    //return 0;
}
