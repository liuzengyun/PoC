% 产生一个（+1，-1）的二元随机序列，画出其第一类部分响应系统的基带信号及其眼图
% 文件名： first_bfxy.m
Ts=1;
N=16;
eye_num=10;
N_data=1000;
dt=Ts/N;
t=-5*Ts:dt:5*Ts;
% 产生双极性数字信号
d=sign(randn(1,N_data));
dd=sigexpand(d,N);
% 部分响应系统冲击响应
ht=sinc((t+eps)/Ts)./(1-(t+eps)./Ts);
ht(6*N+1)=1;
st=conv(dd,ht);
tt=-5*Ts:dt:(N_data+5)*N*dt-dt;
subplot(211);
plot(tt,st);
axis([0 20 -3 3]);
xlabel('t/Ts');
ylabel('部分响应基带信号');
% 画眼图
subplot(212);
ss=zeros(1,eye_num*N);
ttt=0:dt:eye_num*N*dt-dt;
for k=5:50
   ss=st(k*N+1:(k+eye_num)*N);
   drawnow;
   plot(ttt,ss);
    hold on;
end
xlabel('t/Ts');
ylabel('部分响应信号眼图');