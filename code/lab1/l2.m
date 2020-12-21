clc,clear,close all
a = rand(1,100);%产生100个随机码元，0~1
for i=1:length(a)%生成0，1序列
   if a(i)<0.5
       a(i)=0;
   else
       a(i)=1;
   end
end

sample=10;   %每码元抽10
Ts=1;  %时延
dt=1/sample;%抽样间隔
t=0:dt:(100*sample-1)*Ts*dt;

bt=0;%输入信号
for i=1:100 
    bt=bt+a(i)*((t>(0+i*Ts))-(t>(Ts+i*Ts)));
end 
subplot(2,1,1) 
plot(t,bt) 
axis([0,Ts*100,-0.2,1.2]);
title('输入') 
grid on 

%输出信号
st=0.5*bt+0.707*[zeros(1,sample),bt(1:length(t)-sample)]+0.5*[zeros(1,2*sample),bt(1:length(t)-2*sample)]; 
subplot(2,1,2) 
plot(t,st) 
axis([0,Ts*100,-0.2,2]);
title('输出') 
grid on 

