#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

const int STACK_SIZE = 8192000; // In bytes
const int STACK_FRAME_SIZE = 10; // In bytes
intptr_t stack_end = 0;

void foo() {
    int dummy_var = 0;
    intptr_t stack_frame_start = &dummy_var;
    if (stack_frame_start - stack_end < STACK_FRAME_SIZE) {
        printf("panic : stack overflow\n");
        exit(0);
    }
    foo();
}

int main() {
    int dummy_var = 0;
    intptr_t stack_start = &dummy_var;
    stack_end = stack_start - STACK_SIZE;

    foo();
    return 0;
}
