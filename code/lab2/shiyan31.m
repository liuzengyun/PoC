fs=100; %调制信号mt的采样频率
fc=10;   %载波信号频率
df=0.1;
f=0:df:600;
h=1/fs;
t1=0:h:10;
mt=1.414*cos(2*pi*t1);
st=mt.*cos(2*pi*fc.*t1);
SFs=sig_spec(st,t1,h,f);

subplot(2,1,1);
plot(t1,st);
xlabel('t(s)');
ylabel('st');
title('DSB信号时域波形');
grid on;

subplot(2,1,2);
%plot(f,SFs);
plot(f,abs(SFs).^2/t1(end));
xlabel('f(HZ)');
ylabel('Ps');
title('DSB信号功率谱密度');
axis([5 15 0 2]);
grid on;




