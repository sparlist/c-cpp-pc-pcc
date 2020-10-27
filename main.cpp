#include "common.h"

void call_cpp_func(void)
{
    printf("Reached the CPP function\n");
}

int main(int argc, char* const argv[])
{
    // Call a function in a .pcc file
    call_pcc_func();

    return 0;
}
