#include <stdio.h>
#include <unistd.h>

int main() {
    fork();
    sleep(5);
    
    return 0;
}