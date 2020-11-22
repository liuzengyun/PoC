clc,clear,close all 
a = rand(1,1000)<0.5;
sample=8; %每个码元的抽样点数
Ts=1;
dt=1/sample; % 抽样时间间隔
f=-2:0.01:2;
N=100; % 码元数
t=0:dt:(N*sample-1)*Ts*dt; 
bt=0; 
for i=1:1000 
    bt=bt+a(i)*((t>0+i*Ts)-(t>Ts+i*Ts)); 
end 
st=0.5*bt+0.707*[zeros(1,sample),bt(1:length(t)-sample)]+0.5*[zeros(1,2*sample),bt(1:length(t)-2*sample)]; 
subplot(2,2,1) 
plot(t,bt,'LineWidth',2) 
title(' 输入信号 ') 
grid on 
axis([20 40 -0.5 1.5]); 
SF=abs(sig_spec(bt,t,dt,f));

subplot(2,2,2) 
plot(f,SF,'LineWidth',2) 
title(' 输入信号的幅度谱 ') 
axis([-2 2  0 60]); 

grid on 
subplot(2,2,3) 
plot(t,st,'LineWidth',2) 
title(' 输出信号 ') 
grid on 
axis([20 40 -0.5 2]); 


SF1=abs(sig_spec(st,t,dt,f)); 
subplot(2,2,4) 
plot(f,SF1,'LineWidth',2) 
title(' 输出信号的幅度谱') 
axis([-2 2 0 60]); 
grid on