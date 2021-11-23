%Auto Correlation in Octave
close all
clear
clc

pkg load signal
a=input("Coeeficient a: ");
%a=[1 2 3 4];
crosscorrelation=xcorr(a,a)
figure
subplot(3,1,1)
stem(a); axis([-2 10 -5 10]);
subplot(3,1,2)
stem(a); axis([-2 10 -5 10]);
subplot(3,1,3)
stem(crosscorrelation); axis([-2 10 -5 100]);
