#include<stdio.h>
#include<inttypes.h>

int64_t add(int64_t[], int64_t[]);

int main(){
    long int a = 43;
    long int b = 22;
	long int n = 3;
    int x[3][3] = {
    {1, 2, 3},
    {4, 5, 6},
	{7 , 8, 9}
	};

    int y[3][3] = {
    {9, 8, 7},
    {6, 5, 4},
	{3 , 2, 1}
	};
    printf("\n Sum of array %ld \n", add(x,y,n));
	return 0;
}
