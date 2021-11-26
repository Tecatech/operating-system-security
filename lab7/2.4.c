#include <stdio.h>
#include <unistd.h>

int main() {
    int pid = fork();
    
    for (int i = 0; i < 100; i++) {
        if (pid > 0) {
            fork();
        }
    }
    
    sleep(5);
    
    return 0;
}