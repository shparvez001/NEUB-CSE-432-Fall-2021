%Poles, Zero from polynomials
close all
clear
clc

pkg load control %Load Control package
n=[10 20 30];
d=[40 50 60];
sys=tf(n,d)
allpoles=pole(sys)
allzeros=zero(sys)

poles_using_root=roots(d)
zeros_using_root=roots(n)

den=poly(poles_using_root)
num=poly(zeros_using_root)