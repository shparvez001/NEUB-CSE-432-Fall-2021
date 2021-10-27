%Plotting exponential function
close all
clear
clc

fs=100;
t=0:1/fs:20;
a=2;

y=a*exp(t);

figure
plot(t,y);