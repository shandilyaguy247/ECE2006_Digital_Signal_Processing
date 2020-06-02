//LAB TASK 5
//Hardware Experiments

//Generating a sine wave – plotting it and seeing all the values.

#include<stdio.h>
#include<math.h>
float y[100];
void main()
{
int i;
for(i=0;i<100;i++)
{
y[i] = sin(2*3.14*i/100);
}
}
