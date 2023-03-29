//Program to find the maximum and the minimum elements in an array
#include<stdio.h>
#include<inttypes.h>

int64_t add(int64_t, int64_t);

int64_t even(int64_t[], uint64_t);
int64_t odd(int64_t[], uint64_t);

int main(){
    long int a[] = {1,2,3,4,5,6,7,8};

	printf("\nno: of odd numbers: \n", oddd(a,8));
	printf("\nno: of even numbers: \n", even(a,8));
	return 0;
}
