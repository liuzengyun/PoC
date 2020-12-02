clc,clear,close all
fc=10;  %�ز��ź�Ƶ��
df=0.1; %Ƶ����
f=-20:df:20;%Ƶ�����
dt=0.01;%ʱ��ʱ����
t=-5:dt:5;%ʱ�����


mt=sqrt(2)*cos(2*pi*t);%��Ϣ�ź�
st=mt.*cos(2*pi*fc.*t);%�����ź�
SF=sig_spec(st,t,dt,f);%���ø���Ҷ�任�������ź���ϵͳ�ù�


subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('st');
title('DSB�źŵ�ʱ����');
grid on;

subplot(2,1,2);
plot(f,abs(SF));
xlabel('f');
ylabel('Ps');
title('DSB�źŵĹ������ܶ�');
axis([5 15 0 5]);
grid on;
