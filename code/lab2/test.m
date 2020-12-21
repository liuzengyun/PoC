% 2.2 将已调信号解调，并在时域内将解调后的波形与原信号进行对比
clc,clear,close all

% 初始化
fc=10;                  % 载波频率
fs=100;                 % 采样频率
n=500;                  % 采样点数
dt=1/fs;                % 时间间隔
t=-(n-1)*dt:dt:(n-1)*dt;% 时间区间
df=0.1;                 % 频率间隔
f=-20:df:20;            % 频率区间

mt=2^0.5*cos(2*pi*t);   % 调制信号
st=mt.*cos(2*pi*fc*t);  % 已调信号

mt1=st.*cos(2*pi*fc*t); % 解调信号
sa=5*sinc(2*pi*t);      % 
mt2=conv(mt1,sa).*dt;   % 

[saa,f]=t_02_ff(sa,n,fs);    % 傅里叶变换

% 原信号
subplot(3,1,1);
plot(f,saa);
xlabel('t');
ylabel('m(t)');
title('原信号');
grid on;

% 解调后的信号
subplot(3,1,2);
t1=-(n-1)*2*dt:dt:(n-1)*2*dt;
plot(t1,mt2);
xlabel('t');
ylabel('m(t)`');
title('解调后的信号');
axis([-5,5,-1.5,1.5]);
grid on;

subplot(3,1,3);
plot(t,mt);
hold on
plot(t1,mt2);
xlabel('t');
ylabel('m(t) & m(t)`');
axis([-5,5,-1.5,1.5]);
legend('原信号', '解调后的信号')
grid on;
