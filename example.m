%   fftƵ�׼���
%   ���ںţ�����ʦ����
%   �汾��1.0
clc
close all
clear all

fs = 2500; %����Ƶ��
f1 = 25;  %�ź�1Ƶ��
f2 = 250;  %�ź�2Ƶ��
n = 1000; %��������


t = 0:1/fs:(n-1)/fs;

s = 0.9*sin(2*pi*f1*t) + 0.4*sin(2*pi*f2*t);

[f,y] = fft_Sea(s,fs);


plot(t,s);
title('ʱ��');
xlabel('��/S');
ylabel('����/V');

figure      
plot(f,y);
xlabel('Ƶ��/Hz');
ylabel('����/V');






