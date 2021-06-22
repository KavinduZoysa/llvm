#include <inttypes.h>

extern void foo();

const int STACK_SIZE = 8192000; // In bytes
intptr_t stack_end = 0;

int main() {
    int dummy_var = 0;
    intptr_t stack_start = &dummy_var; // To get the start address of stack
                                       // May be this is not the best way to do it
    stack_end = stack_start - STACK_SIZE;

    foo();
    return 0;
}
