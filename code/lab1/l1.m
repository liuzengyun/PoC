clc,clear,close all
f=-2:0.001:2;  %频域
u1=0.5;  
u2=0.707;
u3=0.5;
t1=0;%t：三个信道的时延
t2=1;
t3=2;
h1=u1*exp(-1i*2*pi*f*t1);
h2=u2*exp(-1i*2*pi*f*t2);
h3=u3*exp(-1i*2*pi*f*t3);
h=h1+h2+h3;
subplot(2, 1, 1)
plot(f, h)
title('幅频特性')
subplot(2, 1, 2)
plot(f,angle(h)/pi)
title('相频特性')
grid on