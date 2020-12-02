clc,clear,close all
fc=10;  %载波信号频率
df=0.1; %频域间隔
f=-20:df:20;%频域横轴
dt=0.01;%时域时间间隔
t=-5:dt:5;%时域横轴


mt=sqrt(2)*cos(2*pi*t);%消息信号
st=mt.*cos(2*pi*fc.*t);%调制信号
SF=sig_spec(st,t,dt,f);%调用傅里叶变换函数，信号与系统用过


subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('st');
title('DSB信号的时域波形');
grid on;

subplot(2,1,2);
plot(f,abs(SF));
xlabel('f');
ylabel('Ps');
title('DSB信号的功率谱密度');
axis([5 15 0 5]);
grid on;
