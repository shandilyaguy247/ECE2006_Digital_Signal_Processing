//LAB TASK 5
//Hardware Experiments

//Multiply and summing – Multiply the arrays x and h element by element and store the result in a third array y. Also find the sum of all the elements in the third array.

#include<stdio.h>
#include<math.h>

int x[10] = {0,1,2,3,4,5,6,7,8,9};
int h[10] = {1,1,1,1,1,1,1,1,1,1};
int y[10];
int i;
int sum=0;

void main()
{
for(i=0;i<10;i++)
{
y[i] = x[i]*h[i];
sum = sum + y[i];
}
}
