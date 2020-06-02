%LAB TASK 4
%To Create a Butterworth Filter

Wp = 3.5 * 10^3;
Ws = 4.5 * 10^3;
nWp = Wp/8000;
nWs = Ws/8000;
Rp = 3;
Rs = 30;
[n,Wn] = buttord(nWp,nWs,Rp,Rs);
[b,a] = butter(n,Wn);
freqz(b,a)
