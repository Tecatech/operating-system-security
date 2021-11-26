#include <stdio.h>

extern char **environ;

int main(int argc, char *argv[]) {
    int num = 0;
    char **ptr;
    
    for (ptr = environ; *ptr != NULL; ptr++) {
        num++;
    }
    
    printf("Number of environment variables: %d\n"
           "Number of arguments: %d\n", num, argc);
    
    return 0;
}