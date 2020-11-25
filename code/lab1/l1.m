clc,clear,close all
f=-2:0.001:2;  %Ƶ��
u1=0.5;  
u2=0.707;
u3=0.5;
t1=0;%t�������ŵ���ʱ��
t2=1;
t3=2;
h1=u1*exp(-1i*2*pi*f*t1);
h2=u2*exp(-1i*2*pi*f*t2);
h3=u3*exp(-1i*2*pi*f*t3);
h=h1+h2+h3;
subplot(2, 1, 1)
plot(f, h)
title('��Ƶ����')
subplot(2, 1, 2)
plot(f,angle(h)/pi)
title('��Ƶ����')
grid on