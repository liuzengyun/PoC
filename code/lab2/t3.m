fc=10;  %�ز��ź�Ƶ��
df=0.1; %Ƶ����
f=0:df:1000;%Ƶ�����
dt=0.01;%ʱ��ʱ����
t=0:dt:10;%ʱ�����


mt=sqrt(2)*cos(2*pi*t);%��Ϣ�ź�
st=(2+mt).*cos(2*pi*fc.*t);%�����ź�
SF=sig_spec(st,t,dt,f);%���ø���Ҷ�任�������ź���ϵͳ�ù�

subplot(2,1,1);
plot(t,st);
xlabel('t(s)');
ylabel('st');
title('AM�ź�ʱ����');
grid on;

subplot(2,1,2);
plot(f,abs(SF));
axis([0 20 0 12]);
xlabel('f(HZ)');
ylabel('Ps');
title('AM�źŹ�����');
grid on;