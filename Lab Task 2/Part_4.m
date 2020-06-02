%LAB TASK 2
%LINEAR CONVLUTION

clc;
clear all;
close all;
x=[3,11,7,0,-1,4,2];
nx=[-3,-2,-1,0,1,2,3];
h=[2,3,0,-5,2,1];
nh=[-1,0,1,2,3,4];
y=conv(x,h)
y_b=min(nx)+min(nh);
y_e=max(nx)+max(nh);
ny=y_b:y_e;
subplot(311)
stem(nx,x)
subplot(312)
stem(nh,h)
subplot(313)
stem(ny,y)
