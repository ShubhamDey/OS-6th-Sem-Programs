#include <stdlib.h>
#include <unistd.h>
int main()
{
    int child_pid = fork(); 
    if (child_pid > 0)
        sleep(10);
    else       
        exit(0);
    return 0;
}
