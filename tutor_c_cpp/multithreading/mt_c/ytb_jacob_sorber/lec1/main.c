#include <stdio.h>
#include <pthread.h>
//#include <stdlib.h>
#include <unistd.h> // sleep

void myturn()
{
    while (1) {
        sleep(1);
        printf("My Turn!\n");
    }
}

void yourturn()
{
    while (1) {
        sleep(2);
        printf("Your Turn!\n");
    }
}

int main(void)
{
    printf("Hello, World!\n");
    myturn();
    yourturn();
    return 0;
}
