#include <stdio.h>
int main(void){
    int a=5,b=1,i;
    i=a;
    for (i;i>0;i--)
	if (a>0) {
	    b=b*a;
	    a=a-1;
	}
    printf("Ваш ответ: %d\n", b);
}
    
