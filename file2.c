#include "common.h"

void call_c_func(void)
{
    printf("Reached the C function\n");

    // Now call a function in a pc file
    call_pc_func();
}
