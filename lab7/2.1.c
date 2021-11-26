#include <stdio.h>
#include <unistd.h>

int main() {
    int pid = fork();
    
    if (pid == 0) {
        printf("Message from child process...\n"
               "Parent PID: %d\n"
               "Child PID: %d\n", getppid(), getpid());
    }
    
    return 0;
}