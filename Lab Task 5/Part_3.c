//LAB TASK 5
//Hardware Experiments

//Linear Convolution

#include<stdio.h>
int x[15], y[15], h[15];

void main()
{
int i,j,m,n;
printf("\n enter the value of m");
scanf("%d",&m);
printf("\n enter the value of n");
scanf("%d",&n);
printf("\n enter the value of inputs x[i]");
for(i=0;i<m;i++)
scanf("%d",&x[i]);

printf("\n enter the value of inputs h[i]");
for(i=0;i<n;i++)
scanf("%d",&h[i]);

// making the array sizes to be equal

for(i=m;i<=m+n-1;i++)
	x[i]=0;
for(i=n;i<=m+n-1;i++)
	h[i]=0;

// convolution algo

for(i=0;i<m+n-1;i++)
{
y[i] = 0;
for(j=0;j<=i;j++)
{
	y[i] = y[i] + (x[j]*h[i-j]);
}
}

//display the output

for(i=0;i<m+n-1;i++)
	printf("\n the value of the output y[%d] = %d",i,y[i]);
}

Circulat convolution

#include<stdio.h>
#include<conio.h>
#include<math.h>

void main()
{
int N,M,n,m,k;
float total,h[20],x[20],y[20];

printf("\n\t\t\t circular convolution \n\n\n")
printf("\n Enter the value of N = ");
scanf("%d",&N);

printf("\n\n Enter the sequence h(n)")
for(n=0;n<N;n++)
{
printf("\n\n h[%d]=",n);
scanf("%f",&h[n]);
}
printf("\n\n enter the sequence h(n)")
for(n=0;n<N;n++)
{
	printf("\n\n h[%d]=",n);
	scanf("%f",&h[n]);
}
printf("\n\n\n circulaR convolution is")
for(m=0;m<M;m++)
{
total = 0.0;
for(k=0;k<N;k++)
{
if((m-k)>=0)
	n=m-k;
else
	n=m-k+N;
	total = total + x[k]*h[n];
}
y[m] = total;
printf("\n\n y[%d]=%f",m,y[m]);
}
getch();
}
