%DSP Lab Task 1
%VARIOUS TYPES OF SIGNALS AND THEIR GRAPHS

n=-10:20;
delta_n = [zeros(1,10) 1 zeros(1,20)];stem(n,delta_n);
xlabel('time samples')
ylabel('amplitude')
title('impulse signal')
% limit of x and y axis
axis([-5 5 0 1])
%unit impulse
delta_n=[n==0];
%unit step
delta_n=[n>=0];
stem(n,delta_n);

% REAL exponential signals
n=0:20;
x = 2*(1.2.^n);
stem(n,x);
plot(n,x);

% COMPLEX exponential signals
n=0:40;
K = (-1/12)+(pi/12)*i;
x = 2*(exp(K*n));
subplot(2,1,1)
xlabel('time samples')
ylabel('amplitude')
title('real part of the signal')
stem(n,real(x));
subplot(2,1,2)
xlabel('time samples')
ylabel('amplitude')
title('imaginary part of the signal')
stem(n,imag(x));
axis([0 10 -15 15]);

%Sinusiodal signal
n=0:99;
k=2;
x = k*sin(2*pi*0.01*n);
stem(n,x)

%Sinusiodal signal
n=0:99;
k=2;
subplot(2,1,1)
x = k*sin(2*pi*0.01*n+pi/2);
stem(n,x)
subplot(2,1,2)
x = k*cos(2*pi*0.01*n);
stem(n,x)

%Randomly distributed.
n=0:99
x_n = 4*(rand(1,length(n))-0.5)
subplot(2,1,1)
stem(n,x_n)
subplot(2,1,2)
hist(x_n)

%Normally distributed
n=0:99;
mean=5;
variance=3;
x_n=(sqrt(variance)*randn(1,length(n)))+mean
subplot(2,1,1)
stem(x_n,n);
subplot(2,1,2)
hist(x_n)
