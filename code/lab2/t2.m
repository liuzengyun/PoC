fc=10;  %载波信号频率
df=0.1; %频域间隔
f=0:df:1000;%频域横轴
dt=0.01;%时域时间间隔
t=-10:dt:10;%时域横轴


mt=sqrt(2)*cos(2*pi*t);%消息信号
st=mt.*cos(2*pi*fc.*t);%调制信号


subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('st');
title('DSB信号的时域波形');
grid on;


rt=st.*cos(2*pi*fc*t);
sa=20*sinc(3*pi*t);
tt=-20:dt:20;
rt_conv_sa=conv(rt,sa);%完成rt与sa的卷积积分运算
y=rt_conv_sa.*dt; %取消因步长对卷积积分结果带来的影响
subplot(2,1,2);
plot(tt,y,'r');   
xlabel('t(s)');
title('解调信号波形与原波形的比较');
hold on;
plot(t,mt);
axis([-12 12 -2 2]);
grid on;


