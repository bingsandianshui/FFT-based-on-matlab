%   fft频谱计算
%   公众号：工程师看海
%   版本：1.0
clc
close all
clear all

fs = 2500; %采样频率
f1 = 25;  %信号1频率
f2 = 250;  %信号2频率
n = 1000; %采样点数


t = 0:1/fs:(n-1)/fs;

s = 0.9*sin(2*pi*f1*t) + 0.4*sin(2*pi*f2*t);

[f,y] = fft_Sea(s,fs);


plot(t,s);
title('时域');
xlabel('秒/S');
ylabel('福特/V');

figure      
plot(f,y);
xlabel('频率/Hz');
ylabel('福特/V');






