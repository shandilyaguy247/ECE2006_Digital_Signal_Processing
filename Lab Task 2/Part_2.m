%LAB TASK 2
%TIME SHIFTING PROPERTY OF DTFT

clf;
w=-pi:2*pi/255:pi;
D=10;
x_n=[1 2 3 4 5 6 7];
X_w=freqz(x_n,1,w);
subplot(221)
plot(w/pi,abs(X_w))
title('Magnitude reponse')
subplot(223)
plot(w/pi,angle(X_w))
title('Phase response')
xd_n=[zeros(1,D),x_n];
Xd_w=freqz(xd_n,1,w);
subplot(222)
plot(w/pi,abs(Xd_w))
title('Madnitude response of delayed sequence')
subplot(224)
plot(w/pi,angle(Xd_w))
title('Phase response of delayed sequence')
