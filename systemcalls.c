#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>
int main(){
	int x = system("date");
	printf("%d",x);
	execl("/bin/ps","ps","e",0);
}
