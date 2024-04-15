#include <stdio.h>
#include<stdlib.h>
#include<stdbool.h>

int mutex=1,empty =3 ,full=0;

int wait(int s){
		return --s;}

int signal(int s){
	return ++s;}


void producer(){
	printf("producer is called\n");
	mutex =wait(mutex);
	full =signal(full);
	empty = wait(empty);
	mutex=signal(mutex);
	}
	
void consumer(){
	printf("consumer is called\n");
	mutex= wait(mutex);
	empty=signal(empty);
	full=wait(full);
	mutex=signal(mutex);
	}
	
void main(){
	int choice;
	while(true){
		printf("enter choice :\n1.producer\t2.consumer\t3.exit\n");
		scanf("%d",&choice);
		switch(choice){
			case 1:{
				if (mutex==1 && empty!=0)
					producer();
				else 
					printf("buffer is full\n");
				
				break;
				}
			case 2 :{
				if (mutex==1 && full!=0)
					consumer();
				else
					printf("buffer is empty\n");
				
				break;
				}
			case 3:
				exit(0);
			
			default:
				printf("invalid choice\n");
			}
		}
	}

