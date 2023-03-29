// Author: Sai Ravi Teja Gangavarapu

#include <stdio.h>
#include <limits.h>
#include <stdlib.h>

void int_to_bin(long long int v, int len)
{
    if(v == 1){
        for(int x = 0; x < len-1; x++){
            printf("%d", 0);
        }
        printf("%d", 1);
    }
    else{
        int *array = (int*)malloc(len * sizeof(int));
        int quot = v;
        int rem = 1;
        int i = 0;
        while(quot != 0){
            quot = v/2;
            rem = v%2;
            array[i] = rem;
            i++;
            v = quot;
        };
        
        for(i = len-1; i >= 0; i--){
            printf("%d", array[i]);
        }
    }
    printf("\n");
}

void float_to_bin(float num){ // the result is in IEEE 754 format (32 bits)
    int n = *(int *) &num;
    int len = sizeof(n) * 8;
    char *s = malloc(len+1);
    s[len] = '\0';
    int ind = len - 1;
    while(ind >= 0){
        if (n & 1)
            *(s + ind) = '1';
        else
            *(s + ind) = '0';
        ind--;
        n >>= 1;
    }
    printf("%s\n", s);
    free(s);
}

void double_to_bin(double val) // the result is in IEEE 754 format (64 bits)
{
    unsigned idx;
    unsigned char arr[sizeof val];

    memcpy (arr, &val, sizeof val);

    for (idx=CHAR_BIT * sizeof val; idx = idx - 1 ; ) {
            putc(
            ( arr[idx/CHAR_BIT] & (1u << (idx%CHAR_BIT) ) )
            ? '1'
            : '0'
            , stdout
            );
            }
}

int main(int argc, char **argv)
{
    int x;
    float y;
    double z;
    printf("Enter an integer: ");
    scanf("%lld", &x);
    int_to_bin(x, 32);
    printf("Input a float: ");
    scanf("%f", &y);
    float_to_bin(y);
    printf("Input a double: ");
    scanf("%lf", &z);
    double_to_bin(z);
    return 0;
}