% 2.2 ���ѵ��źŽ��������ʱ���ڽ������Ĳ�����ԭ�źŽ��жԱ�
clc,clear,close all

% ��ʼ��
fc=10;                  % �ز�Ƶ��
fs=100;                 % ����Ƶ��
n=500;                  % ��������
dt=1/fs;                % ʱ����
t=-(n-1)*dt:dt:(n-1)*dt;% ʱ������
df=0.1;                 % Ƶ�ʼ��
f=-20:df:20;            % Ƶ������

mt=2^0.5*cos(2*pi*t);   % �����ź�
st=mt.*cos(2*pi*fc*t);  % �ѵ��ź�

mt1=st.*cos(2*pi*fc*t); % ����ź�
sa=5*sinc(2*pi*t);      % 
mt2=conv(mt1,sa).*dt;   % 

[saa,f]=t_02_ff(sa,n,fs);    % ����Ҷ�任

% ԭ�ź�
subplot(3,1,1);
plot(f,saa);
xlabel('t');
ylabel('m(t)');
title('ԭ�ź�');
grid on;

% �������ź�
subplot(3,1,2);
t1=-(n-1)*2*dt:dt:(n-1)*2*dt;
plot(t1,mt2);
xlabel('t');
ylabel('m(t)`');
title('�������ź�');
axis([-5,5,-1.5,1.5]);
grid on;

subplot(3,1,3);
plot(t,mt);
hold on
plot(t1,mt2);
xlabel('t');
ylabel('m(t) & m(t)`');
axis([-5,5,-1.5,1.5]);
legend('ԭ�ź�', '�������ź�')
grid on;
