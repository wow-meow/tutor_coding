#include <stdio.h>
#include <stdlib.h>
#include <gnu/libc-version.h>

int main(int argc, char *argv[]) {
  //return 0;
  printf("GNU libc version: %s\n", gnu_get_libc_version());
  exit(EXIT_SUCCESS);
}
