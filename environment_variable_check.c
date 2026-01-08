#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char env_name[50];
    char *value;
    int ch = 1;

    while (ch != 0)
    {
        printf("Enter the environment variable name:\n");
        scanf("%s", env_name);

        value = getenv(env_name);

        if (value != NULL)
        {
            printf("%s\n", value);
        }
        else
        {
            printf("Environment variable %s does not exist\n", env_name);
        }

        printf("Do you want to continue? (1 for yes / 0 for no):\n");
        scanf("%d", &ch);
    }

    return 0;
}
