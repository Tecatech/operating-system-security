#include <stdio.h>

extern char **environ;

int main(int argc, char *argv[]) {
    char **ptr;
    
    for (ptr = environ; *ptr != NULL && ptr - environ < 10; ptr++) {
        printf("%s\n", *ptr);
    }
    
    return 0;
}