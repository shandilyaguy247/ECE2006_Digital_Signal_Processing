%LAB TASK 3
%CIRCULAR CONVOLUTION

%second function for performing circular shift

function y = circshift1(x,M) 
N = length(x)-1;
if M > N
    M=rem(N,M);
end
if M<0
    M=length(x) + M;
end
y = [x(length(x)-(M-1):length(x)) x(1: length(x)-M)]


clc
clear all
x = [1 2 3 4 5 6 7]
m = 3
y = circshift2(x,m)

function y = circonv(x1,x2)
l1 = length(x1);
l2 = length(x2);
if l1~=l2 error 'Sequence should be of the same size.', end
%one of them should be the negative inv of the original array
xflr = [x2(1),x2(length(x2):-1:2)]

y = zeros(1,l2)
for i = 1:length(x2)
    xshf = circshift2(xflr,i-1)
    h = x1.*xshf;
    h = sum(h);
    y(i)=h;
end
display(y);

clc
clear all
x1 = [1 2 3 4 5]
x2 = [1 -2 -3 5 6]
y = circonv(x1,x2);
