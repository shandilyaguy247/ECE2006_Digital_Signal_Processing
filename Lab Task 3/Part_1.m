%LAB TASK 3
%FINDING THE 8 point and 16 point DFT

clc
clear all

X_n = [1,2,3,4];
X1_k = fft(X_n,8);
X2_k = fft(X_n,16);
X3_k = fft(X_n,64);
figure
subplot(3,1,1)
k1 = 0:7
stem(k1,abs(X1_k))
title('8 point DFT')
xlabel('frequency sampled')

subplot(3,1,2)
k2 = 0:15
stem(k2,abs(X2_k))
title('16 point DFT')
xlabel('frequency sampled')

subplot(3,1,3)
k3 = 0:63
stem(k3,abs(X3_k))
title('64 point DFT')
xlabel('frequency sampled')

w = 0:2*pi/63:2*pi;
X11_w = freqz(X_n,1,w);
figure
subplot(2,1,1)
plot(w/pi,abs(X11_w))
title('DTFT of the signal')
subplot(2,1,2)
plot(k3,abs(X3_k))
title('64 point DFT of the signal')

%writing a function for the circular convolution
function y = circshift1(x,M)
%user defined function circshift1 and x is the input seq and M is the shift that needs to be performed
N = length(x)-1;
if M > N
    M=rem(N,M);
end
if M<0
    M=length(x) + M;
end
y = [x(length(x)-(M-1):length(x)) x(1: length(x)-M)]

%TESTING THE FUNCTION WE CREATED
clc
clear all
x = [1 2 3 4 5 6 7];
n = 0:length(x)-1;
subplot(2,1,1)
stem(x,n)
M=3;
y = circshift1(x,M)
subplot(2,1,2)
stem(y,n)
end