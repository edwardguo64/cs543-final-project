#include <stdio.h>
#include <stdlib.h>

int main() {
    int i;

    float parameters[51902];

    FILE *file;

    file = fopen("parameters.bin", "r");

    size_t bytes_read = fread((void*)parameters, sizeof(float)*51902, 51902, file);

    if (bytes_read != 0) {
        for (i = 0; i < 25; i++) {
            printf("%0.12f ", parameters[i]);
        }
        printf("\n");
    } else {
        printf("file read error\n");
    }

    return 0;
}