fs=100; %�����ź�mt�Ĳ���Ƶ��
fc=10;   %�ز��ź�Ƶ��
df=0.1;
f=0:df:600;
h=1/fs;
t=0:h:10;
mt=1.414*cos(2*pi*t);
st=mt.*cos(2*pi*fc.*t);
SFs=sig_spec(st,t,h,f);

subplot(2,1,1);
plot(t,st);
xlabel('t(s)');
ylabel('st');
title('DSB�ź�ʱ����');
grid on;

subplot(2,1,2);
%plot(f,SFs);
plot(f,abs(SFs).^2/t(end));
xlabel('f(HZ)');
ylabel('Ps');
title('DSB�źŹ������ܶ�');
axis([5 15 0 2]);
grid on;




