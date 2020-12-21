% 计算傅里叶变换函数（参考）
% 输入 st:s(t)时域信号 N:采样点数 fs:采样频率
% 输出 Fs:对应的频域信号 f:频率范围
function [Fs,f]=t_02_ff(st,N,fs)

Y=pi*fft(st);               % 傅里叶变换函数
Y1=abs(Y/N);                % 每个量除以数列长度L
Fs=Y1(1:N/2+1);             % 取交流部分
Fs(2:end-1)=2*Fs(2:end-1);  % 交流部分模值乘以2
f=fs*(0:(N/2))/N;           % 求频率范围

end
