%LAB TASK 4
%To CREATE CHEBYSHEV HIGHPASS FILTER

clc
close all;
Ws = 3.5 * 10^3;
Wp = 4.5 * 10^3;
Wp = Wp/8000;
Ws = Ws/8000;
Rp = 3;
Rs = 30;
[n,Wp] = cheb1ord(Wp,Ws,Rp,Rs);
[b,a] = cheby1(n,Rp,Wp,'high');
figure
freqz(b,a)
title('Chebyshev Type 1')
Wp = 3.5 * 10^3;
Ws = 4.5 * 10^3;
Wp = Wp/8000;
Ws = Ws/8000;
Rp = 3;
Rs = 30;
[n,Ws] = cheb2ord(Wp,Ws,Rp,Rs);
[b,a] = cheby2(n,Rs,Ws,'high');
figure
freqz(b,a)
title('Chebyshev Type 2')
