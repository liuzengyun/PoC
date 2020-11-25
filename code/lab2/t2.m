fs=100; %�����ź�mt�Ĳ���Ƶ��
fc=10;   %�ز��ź�Ƶ��
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
title('�����ź�ʱ����');
grid on;

rt=st.*cos(2*pi*fc*t1);
sa=20*sinc(3*pi*t1);
t=-20:h:20;
rt_conv_sa=conv(rt,sa);%���rt��sa�ľ����������
y=rt_conv_sa.*h; %ȡ���򲽳��Ծ�����ֽ��������Ӱ��
subplot(2,1,2);
plot(t,y,'r');   
xlabel('t(s)');
title('����źŲ�����ԭ���εıȽ�');
hold on;
plot(t1,mt);
axis([-12 12 -2 2]);
grid on;


