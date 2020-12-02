fc=10;  %载波信号频率
df=0.1; %频域间隔
f=0:df:1000;%频域横轴
dt=0.01;%时域时间间隔
t=0:dt:10;%时域横轴


mt=sqrt(2)*cos(2*pi*t);%消息信号
st=(2+mt).*cos(2*pi*fc.*t);%调制信号
SF=sig_spec(st,t,dt,f);%调用傅里叶变换函数，信号与系统用过

subplot(2,1,1);
plot(t,st);
xlabel('t(s)');
ylabel('st');
title('AM信号时域波形');
grid on;

subplot(2,1,2);
plot(f,abs(SF));
axis([0 20 0 12]);
xlabel('f(HZ)');
ylabel('Ps');
title('AM信号功率谱');
grid on;