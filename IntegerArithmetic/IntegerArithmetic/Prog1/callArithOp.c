#include<stdio.h>
#include<inttypes.h>

int64_t addTwo(int64_t, int64_t);
int64_t subTwo(int64_t, int64_t);
int64_t mulTwo(int64_t, int64_t);
int64_t divTwo(int64_t, int64_t);

int main(){
    long int a=50, b=10;
	printf("\n Result of Addition is %ld \n", addTwo(a,b));
	printf("\n Result of Subtraction is %ld \n", subTwo(a,b));
	printf("\n Result of Multilcation is %ld \n", mulTwo(a,b));
	printf("\n Result of Division is %ld \n", divTwo(a,b));
	return 0;
}
