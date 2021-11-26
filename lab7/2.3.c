#include <stdio.h>
#include <unistd.h>

int main() {
    int pid = fork();
    
    for (int j = 0; j < 10; j++) {
        if (pid > 0) {
            fork();
        }
    }
    
    sleep(5);
    
    return 0;
}