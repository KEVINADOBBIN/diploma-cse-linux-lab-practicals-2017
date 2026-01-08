#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main()
{
    int pid;
    char command[50];

    pid = fork();

    if (pid == 0)
    {
        // Child process
        printf("Enter the Linux command:\n");
        scanf("%s", command);
        system(command);
    }
    else if (pid > 0)
    {
        // Parent process waits for child
        wait(NULL);
    }
    else
    {
        printf("Fork failed\n");
    }

    return 0;
}
