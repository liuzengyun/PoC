fc=10;  %载波信号频率
df=0.1; %频域间隔
f=0:df:1000;%频域横轴
dt=0.01;%时域时间间隔
t=0:dt:10;%时域横轴
mt=1.414*cos(2*pi*t);
mt1=1.414*sin(2*pi*t);
st=0.5*mt.*cos(2*pi*fc.*t)-0.5*mt1.*sin(2*pi*fc.*t);
SF=sig_spec(st,t,dt,f);

subplot(2,1,1);
plot(t,st);
axis([0 2 -1 1]);
xlabel('t(s)');
ylabel('st');
title('SSB信号时域波形');
grid on;

subplot(2,1,2);
plot(f,abs(SF));
axis([5 15 0 3.5]);
xlabel('f(HZ)');
ylabel('Ps');
title('SSB信号功率谱');
grid on;