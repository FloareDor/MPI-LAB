#include<stdio.h>
#include<inttypes.h>

void arop(int64_t [], int64_t []);

int main(){
        long int X[2]; //Input
	long int Y[5]; //Output
	X[0]=100;
	X[1]=15;
	arop(Y,X);
	printf("\n First Operand:%ld \t Second Operand:%ld\n",X[0],X[1]);
	printf("\n Result of Addition is %ld \n", Y[0]);
	printf("\n Result of Subtraction is %ld \n", Y[1]);
	printf("\n Result of Multiplication is %ld \n", Y[2]);
	printf("\n Result of Division: Quotient:%ld  and Remainder:%ld \n", Y[3], Y[4]);
	return 0;
}
