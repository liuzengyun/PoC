clc,clear,close all
f=-2:0.001:2;
h1=0.5*exp(-1i*2*pi*f*0);
h2=0.707*exp(-1i*2*pi*f*1);
h3=0.5*exp(-1i*2*pi*f*2);
h=h1+h2+h3;
subplot(2, 1, 1)
plot(f, h)
axis([-2 2 -0.5 2])
subplot(2, 1, 2)
plot(f,angle(h)/pi)
grid on