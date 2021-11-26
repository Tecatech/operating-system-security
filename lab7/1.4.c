#include <stdio.h>
#include <stdlib.h>

extern char **environ;

int main(int argc, char *argv[]) {
    if (argc < 2) {
        return -1;
    }
    
    int num = atoi(argv[1]);
    char **ptr;
    
    for (ptr = environ; *ptr != NULL && ptr - environ < num; ptr++) {
        printf("%s\n", *ptr);
    }
    
    return 0;
}