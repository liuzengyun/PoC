fc=10;  %�ز��ź�Ƶ��
df=0.1; %Ƶ����
f=0:df:1000;%Ƶ�����
dt=0.01;%ʱ��ʱ����
t=-10:dt:10;%ʱ�����


mt=sqrt(2)*cos(2*pi*t);%��Ϣ�ź�
st=mt.*cos(2*pi*fc.*t);%�����ź�


subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('st');
title('DSB�źŵ�ʱ����');
grid on;


rt=st.*cos(2*pi*fc*t);
sa=20*sinc(3*pi*t);
tt=-20:dt:20;
rt_conv_sa=conv(rt,sa);%���rt��sa�ľ����������
y=rt_conv_sa.*dt; %ȡ���򲽳��Ծ�����ֽ��������Ӱ��
subplot(2,1,2);
plot(tt,y,'r');   
xlabel('t(s)');
title('����źŲ�����ԭ���εıȽ�');
hold on;
plot(t,mt);
axis([-12 12 -2 2]);
grid on;


