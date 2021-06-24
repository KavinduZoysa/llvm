#include <stdio.h>

void foo() { 
    int a = 2;
    printf("%p\n", &a);
}

int main(void) {
    foo();
    return 0;
}
