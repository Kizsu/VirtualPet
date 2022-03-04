#include "util.h"

/**
* Allocate a dynamic c-string with given length
*/
int malloc_str(char* dest, int size)
{
    /**
    * Create a buffer variable to store the temporary string of double the given size (in case of overflow), get user input,
    * then if the input is short enough, reallocate the memory to the correct size, copy the buffer to the destination,
    * and finally free the buffer and return an error code
    */
    char *buffer = malloc( sizeof(char) * (size*2 + 1));
    fgets(buffer, size*2+2, stdin);
    int length = strlen(buffer);
    if (length <= size+1)
    {
        buffer = (char*) realloc(buffer, sizeof(char) * (size));
        buffer[length - 1] = '\0';
    }
    else
    {
        free(buffer);
        return 1;
    }
    strcpy(dest, buffer);
    free(buffer);
    return 0;
}

/**
* Function to clear the screen, by flooding it with 100 empty lines
*/
void clear_terminal()
{
    for (int i=0; i<100; i++)
    {
        fputs("\n", stdout);
    }
}
