eye=10;
N_data=1000;
dt=1.0/16;
t=-5:dt:5;
% ����˫���������ź�
d=sign(randn(1,N_data));
dd=sigexpand(d,16);
% ������Ӧϵͳ�����Ӧ
ht=sinc((t+eps))./(1-(t+eps));
ht(6*16+1)=1;
st=conv(dd,ht);
tt=-5:dt:(N_data+5)*16*dt-dt;
% ����ͼ
ss=zeros(1,eye*16);
ttt=0:dt:eye*16*dt-dt;
for k=5:50
   ss=st(k*16+1:(k+eye)*16);
   drawnow;
   plot(ttt,ss);
    hold on;
end
xlabel('t/Ts');
ylabel('������Ӧ�ź���ͼ');