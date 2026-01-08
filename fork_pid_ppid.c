#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
    pid_t pid;

    pid = fork();

    if (pid == 0)
    {
        // Child process
        printf("Child Process\n");
        printf("The process ID is %d\n", getpid());
        printf("The parent process ID is %d\n", getppid());
    }
    else if (pid > 0)
    {
        // Parent process
        printf("Parent Process\n");
        printf("The process ID is %d\n", getpid());
    }
    else
    {
        printf("Fork failed\n");
    }

    return 0;
}
