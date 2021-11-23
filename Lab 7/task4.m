%Cross Correlation in Octave
close all
clear
clc

pkg load signal
a=input("Coeeficient a: ");
b=input("Coeeficient b: ");
%a=[1 2 3 4];
%b=[7 8 9 10]
crosscorrelation=xcorr(a,b)
figure
subplot(3,1,1)
stem(a); axis([-2 10 -5 10]);
subplot(3,1,2)
stem(b); axis([-2 10 -5 10]);
subplot(3,1,3)
stem(crosscorrelation); axis([-2 10 -5 100]);
