fs=100; %调制信号mt的采样频率
fc=10;   %载波信号频率
df=0.1;
h=1/fs;
t1=-10:h:10;
mt=1.414*cos(2*pi*t1);
st1=mt.*cos(2*pi*fc.*t1);
noise=sqrt(0.1)*randn(1);
yn1=st1+noise;

subplot(2,1,1);
plot(t1,yn1);
xlabel('t(s)');
ylabel('st');
axis([-5,5,-2,2]);
title('加入噪声的DSB信号时域波形');
grid on;

rt1=st1.*cos(2*pi*fc*t1);
sa1=20*sinc(3*pi*t1);
t=-20:h:20;
rt1_conv_sa1=conv(rt1,sa1);%完成rt与sa的卷积积分运算
y1=rt1_conv_sa1.*h; %取消因步长对卷积积分结果带来的影响
subplot(2,1,2);
plot(t1,mt);
hold on;
plot(t,y1,'r');
axis([-12,12,-2,2]);
title('解调后信号与原信号进行比较');
grid on;





