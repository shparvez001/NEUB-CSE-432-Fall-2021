%Sine and cosine component of a complex number
close all
clear
clc

j=sqrt(-1);
fs=100;
t=0:1/fs:2;
a=1;
f=1;
w=2*pi*f;
y=exp(j*w*t);

figure
plot(t,real(y))
title('Real Part of exponential function e^j^w^t')
xlabel('t')
ylabel('Real(e^j^w^t)')

figure
plot(t,imag(y))
title('Imaginary Part of exponential function e^j^w^t')
xlabel('t')
ylabel('Imag(e^j^w^t)')