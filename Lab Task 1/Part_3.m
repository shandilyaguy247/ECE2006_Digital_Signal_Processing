%DSP Lab Task 1
%DIFFERENCE OUTPUT

clc;
clear all;
n = 0:40;
a=3;b=-2;d=10;

%input signals

x1_n = cos(2*pi*0.1*n);
x2_n = cos(2*pi*0.4*n);
x3_n = a*x1_n + b*x2_n;
xd_n = [zeros(1,d) x3_n];
nd = 0:length(n)+d-1;

figure
subplot(2,1,1)
stem(n,x3_n);
title('regular signal')
xlabel('Time samples')
ylabel('Amplitude')
subplot(2,1,2)
stem(nd,xd_n);
xlabel('Time samples')
ylabel('Amplitude')
title('delayed signal')

%system definitions

num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
ic=[0 0];

%output of the system

y1_n = filter(num,den,x1_n,ic);
y2_n = filter(num,den,x2_n,ic);
y3_n = filter(num,den,x3_n,ic);
yd_n = filter(num,den,xd_n,ic);

figure
subplot(2,1,1)
stem(n,y3_n);
xlabel('Time samples')
ylabel('Amplitude')
title('output signal')
subplot(2,1,2)
stem(nd,yd_n);
xlabel('Time samples')
ylabel('Amplitude')
title('output of delayed signal')

impz(num,den,40)
%gives the impulse response
