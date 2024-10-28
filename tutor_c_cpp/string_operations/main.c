/**
 * - initialize char str[LEN] = {0} with the null terminator
 * - the writable size of string buffer: len_src + 1, to include the null terminator '\0'
 * - need to sepcify the writable size of buffer: memmove, strncpy, strlcpy, snprintf
 * - strcat, sprintf
 *
 **/

#include <stdio.h>
#include <string.h> // strcpy, strncpy, strlcpy
//#include <_bsd_types.h>

// define a struct
struct Person {
    char m_name[20];
};

void concatStr(char *dest, const char *src) {
    // get originial lengths of both strings to perform pointer arithmetics
    size_t len_dest = strlen(dest);
    size_t len_src = strlen(src);
    printf("len_dest = %ld, len_src = %ld\n", len_dest, len_src);
    memmove(dest + len_dest, src, len_src + 1); // +1 to include the null terminator '\0'
}

int main() {
    printf("\n== Learn to manipulate C Strings ==\n");

    printf("\n=== 2 source strings, str1, str2 ===\n");
    const char *str1 = "Hello,_";
    const char str2[] = "World!";
    printf("str1: %s\n", str1);
    printf("str2: %s\n", str2);

    printf("\n=== str3 ===\n");
    char str3[30] = {0}; // 0 means '\0' the NULL terminator
    printf("str3: %s\n", str3);
    printf("strlen(str3): %ld\n", strlen(str3));
    //strlcpy(str3, str1, 1 + strlen(str1)); // +1 to include the null terminator '\0'
    strncpy(str3, str1, 1 + strlen(str1)); // +1 to include the null terminator '\0'
    strcat(str3, str2);
    printf("str3: %s\n", str3);
    printf("strlen(str3): %ld\n", strlen(str3));

    printf("\n=== str4 ===\n");
    char str4[30] = {0}; // identical to '\0'
    printf("str4: %s\n", str4);
    printf("strlen(str4): %ld\n", strlen(str4));
    printf("str1: %s\n", str1);
    printf("str2: %s\n", str2);
    concatStr(str4, str1);
    printf("str4: %s\n", str4);
    printf("strlen(str4): %ld\n", strlen(str4));
    concatStr(str4, str2);
    printf("str4: %s\n", str4);
    printf("strlen(str4): %ld\n", strlen(str4));

    struct Person person1 = { "Jack" };
    printf("person1.m_name: %s\n", person1.m_name);

    struct Person person2;
    printf("strlen(person2.m_name): %ld\n", strlen(person2.m_name));
    //strlcpy(person2.m_name, "Thomas", 20);
    strncpy(person2.m_name, "Thomas", 20);
    printf("person2.m_name: %s\n", person2.m_name);
    printf("strlen(person2.m_name): %ld\n", strlen(person2.m_name));

    const char str5[] = {'H', 'e', 'l', 'l', 'o', '_'};
    printf("str5: %s\n", str5);
    const char str6[] = {'H', 'e', 'l', 'l', 'o', '_', '\0'};
    printf("str6: %s\n", str6);
    const char str7[6] = {'H', 'e', 'l', 'l', 'o', '_'};
    printf("str7: %s\n", str7);

    printf("\n=== str8 ===\n");
    char str8[50] = {0};
    printf("str8: %s\n", str8);
    int len_formatstr = 0;
    len_formatstr = sprintf(str8, "%s-%s", str1, str2);
    printf("len_formatstr (excluding '\\0'): %d | result-str: %s\n",
        len_formatstr, str8);
    int size_writable = 14; // including the null terminator
    len_formatstr = snprintf(str8, size_writable, "%s-%s", str1, str2);
    printf("len_formatstr (excluding '\\0'): %d | result-str: %s\n",
        len_formatstr, str8);
    if (size_writable < 1 + len_formatstr) {
        fputs("Buffer size exceeded, string truncated\n", stderr);
        fprintf(stderr, "Buffer size exceeded, string truncated\n");
    }
    printf("Joined string: %s\n", str8);

    return 0;
}
