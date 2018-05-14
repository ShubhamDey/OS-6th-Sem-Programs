#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
# define NTHREAD 10
void myfunc(){
	printf("\n Hello");
}
int main(int argc,char ** argv){
	int rc,i,j;
	pthread_t tid;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr,PTHREAD_CREATE_JOINABLE);
	for(j=0;j<NTHREAD;j++)
	{
		rc=pthread_create(&tid,&attr,myfunc,NULL);
		if(rc){
			printf("Error, return code from pthread_create() is %d",rc);
			exit(-1);
		}
		rc=pthread_join(tid,NULL);
		if(rc){
			printf("Error, return code from pthread_join() is %d",rc);
			exit(-2);
		}
	}
	pthread_attr_destroy(&attr);
	pthread_exit(NULL);
}
// compile using:- gcc filename.c -lpthread
