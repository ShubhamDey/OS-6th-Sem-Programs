#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
int main(){
	int check=fork();
	if(check < 0){
		printf("FORK failed\n");
		exit(1);
	}
	if(check == 0){
		printf("Child ID = %d\n", getpid());
		printf("Child's parent ID = %d\n", getppid());
		sleep(5);
		printf("\nChild ID = %d\n", getpid());
		printf("Child's parent ID = %d\n", getppid());
	}
	else{
		printf("Parent ID = %d\n", getpid());
		printf("Parent's parent ID = %d\n", getppid());
	}
}
