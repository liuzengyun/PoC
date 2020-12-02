fc=10;  %�ز��ź�Ƶ��
df=0.1; %Ƶ����
f=0:df:1000;%Ƶ�����
dt=0.01;%ʱ��ʱ����
t=0:dt:10;%ʱ�����
mt=1.414*cos(2*pi*t);
mt1=1.414*sin(2*pi*t);
st=0.5*mt.*cos(2*pi*fc.*t)-0.5*mt1.*sin(2*pi*fc.*t);
SF=sig_spec(st,t,dt,f);

subplot(2,1,1);
plot(t,st);
axis([0 2 -1 1]);
xlabel('t(s)');
ylabel('st');
title('SSB�ź�ʱ����');
grid on;

subplot(2,1,2);
plot(f,abs(SF));
axis([5 15 0 3.5]);
xlabel('f(HZ)');
ylabel('Ps');
title('SSB�źŹ�����');
grid on;