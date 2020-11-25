fs=100; %调制信号mt的采样频率
fc=10;   %载波信号频率
df=0.1;
h=1/fs;
t1=-10:h:10;
mt=1.414*cos(2*pi*t1);
st=mt.*cos(2*pi*fc.*t1);

subplot(2,1,1);
plot(t1,mt);
xlabel('t(s)');
ylabel('mt');
axis([-5 5 -2 2]);
title('调制信号时域波形');
grid on;

rt=st.*cos(2*pi*fc*t1);
sa=20*sinc(3*pi*t1);
t=-20:h:20;
rt_conv_sa=conv(rt,sa);%完成rt与sa的卷积积分运算
y=rt_conv_sa.*h; %取消因步长对卷积积分结果带来的影响
subplot(2,1,2);
plot(t,y,'r');   
xlabel('t(s)');
title('解调信号波形与原波形的比较');
hold on;
plot(t1,mt);
axis([-12 12 -2 2]);
grid on;


