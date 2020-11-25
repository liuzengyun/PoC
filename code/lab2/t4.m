fs=100; %调制信号mt的采样频率
fc=10;   %载波信号频率
df=0.1;
f=0:df:600;
h=1/fs;
t1=0:h:10;
A=2;
mt=1.414*cos(2*pi*t1);
mt1=1.414*sin(2*pi*t1);
st=0.5*mt.*cos(2*pi*fc.*t1)-0.5*mt1.*sin(2*pi*fc.*t1);
SFs=sig_spec(st,t1,h,f);

subplot(2,1,1);
plot(t1,st);
axis([0 2 -1 1]);
xlabel('t(s)');
ylabel('st');
title('SSB信号时域波形');
grid on;

subplot(2,1,2);
plot(f,abs(SFs).^2/t1(end));
axis([5 15 0 1.5]);
xlabel('f(HZ)');
ylabel('Ps');
title('SSB信号功率谱');
grid on;