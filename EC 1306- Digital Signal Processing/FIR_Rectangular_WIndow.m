% EC 1306 mini project By
% Snehal Jha             1714115
% Roshan Thakur          1714116
% Varcchasava Bhardwaj   1714117
% Saransh Kumar          1714118
% Prashant Jha           1714119
%
% Topic:-
% Design a high pass FIR filter in MATLAB to meet the following specifications:
% pass band edge frequency = 5 kHz
% sampling frequency = 20 kHz 
% order of the filter = 20
% 1. Rectabgular Window
% 2. Hanning Window
% 3. Bartlett Window
%
% Code

clc;
clear all;
close all;

%     ONLY FOR OCTAVE USERS - Uncomment Below Line
%     pkg load signal


fp=input('Enter the passband frequency(fp):');
f=input('Enter the sampling frequency(f):');
n=input('Enter order of the filter:');

wp=2*fp/f;

figure('Name',"High Pass FIR",'NumberTitle','off')
subplot(3, 1, 1)
b=fir1(n,wp,'high',boxcar(n+1));
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
plot(m);
ylabel('Gain(db)->');
xlabel('(b)Normalised frequency->');
title("Rectangular Window");


subplot(3, 1, 2)
b=fir1(n,wp,'high', hann(n+1));
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
plot(m);
ylabel('Gain(db)->');
xlabel('(b)Normalised frequency->');
title("Hanning Window");

subplot(3, 1, 3)
b=fir1(n,wp,'high', bartlett(n+1));
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
plot(m);
ylabel('Gain(db)->');
xlabel('(b)Normalised frequency->');
title("Bartlett Window");
%End of Code
