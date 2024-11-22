#include "globals.h"

/**
 * global variables declared in globals.h, and only defined once in here globals.c. 
 * As a result, they don't need the extern keyword at the front.
 * */

const int g_LenGIArr = LEN_GIARR;
//const int g_LenGIArr = 10;
int g_iArr[LEN_GIARR];
//int g_iArr[g_LenGIArr]; // implicit initialization to zeros
int g_count = 0;