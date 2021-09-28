%   fft频谱计算
%   公众号：工程师看海
%   版本：2.0
% input：
%     x：原始信号序列
%     fs：采样频率
% output：
%     f:频率序列
%     y:幅度序列


function [f,y]  = fft_Sea(x,fs)

n = length(x);      %采样个数，采集1个周期
if mod(n,2)
    n = n - 1;
    x = x(1:n);
else
    n = n;
end
    
t = 0:1/fs:(n-1)/fs;

%fft
fft_s = fft(x,n);
fft_s_abs = abs(fft_s)*2/n; %单位换算为时域幅度
fft_s_abs(1) = fft_s_abs(1) / 2;%直流换算
y = fft_s_abs(1:n/2);%取单边频谱
f = 0:fs/n:(fs-fs/n)/2;   %横坐标单边频率

% figure
% plot(t,x)   %打印1个周期的时域信号
% axis([-inf, inf,(-1.2)*inf,(1.2)*inf]);
% xlabel('时间/s');
% 
% figure
% plot(f,y);
% axis([0 f(n/2),-inf,inf]);
% xlabel('频率/Hz');

