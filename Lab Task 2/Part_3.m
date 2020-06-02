%LAB TASK 2
%TIME SHIFTING PROPERTY OF DTFT - 2

clf;
w=-pi:2*pi/255:pi;
w0=-0.4*pi;
x_n=[1 2 3 4 5 6 7];
n=0:length(x_n)-1;
X_w=freqz(x_n,1,w);
subplot(221)
plot(w/pi,abs(X_w))
grid on;
title('Magnitude reponse')
subplot(223)
plot(w/pi,angle(X_w))
grid on;
title('Phase response')
x1_n=(exp(j*w0*n)).*x_n;
X1_w=freqz(x1_n,1,w);
subplot(222)
plot(w/pi,abs(X1_w))
grid on;
title('Delayed Magnitude reponse')
subplot(224)
plot(w/pi,angle(X1_w))
grid on;
title('Delayed Phase response')
