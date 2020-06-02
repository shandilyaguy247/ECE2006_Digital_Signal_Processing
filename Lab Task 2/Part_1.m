%LAB TASK 2
%LINEAR PROPERTY OF DTFT

clc;
clear all;
close all;
A=[1 2];
B=[1 -0.4];
w=-4*pi:8*pi/511:4*pi;
h=freqz(B,A,w);
subplot(411)
plot(w/pi,real(h))
title('Real')
subplot(412)
plot(w/pi,imag(h))
title('Imaginary')
subplot(413)
plot(w/pi,abs(h))
title('Magnitude')
subplot(414)
plot(w/pi,angle(h))
title('Phase')
