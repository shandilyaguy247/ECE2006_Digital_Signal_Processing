%DSP Lab Task 1
%SYSTEMS AND OPERATIONS ON SYSTEMS

clc;
clear all;
n = 0:40;
a=2;b=-3;

%Input signals

x1_n = cos(2*pi*0.1*n);
x2_n = cos(2*pi*0.4*n);
x3_n = a*x1_n + b*x2_n;

figure
subplot(3,1,1)
stem(n,x1_n);
xlabel('Time samples')
ylabel('Amplitude')
subplot(3,1,2)
stem(n,x2_n);
xlabel('Time samples')
ylabel('Amplitude')
subplot(3,1,3)
stem(n,x3_n);
xlabel('Time samples')
ylabel('Amplitude')

%system definitions
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
ic=[0 0];

%output of the system
y1_n = filter(num,den,x1_n,ic);
y2_n = filter(num,den,x2_n,ic);
y3_n = filter(num,den,x3_n,ic);

figure
subplot(3,1,1)
stem(n,y1_n);
xlabel('Time samples')
ylabel('Amplitude')
subplot(3,1,2)
stem(n,y2_n);
xlabel('Time samples')
ylabel('Amplitude')
subplot(3,1,3)
stem(n,y3_n);
xlabel('Time samples')
ylabel('Amplitude')

%the difference output

figure
d = y3_n - (a*y1_n) - (b*y2_n);
stem(n,d)
xlabel('time samples')
ylabel('difference output')
