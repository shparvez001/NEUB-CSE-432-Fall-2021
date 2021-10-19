% Plotting Sine curve
close all
clear
clc

fs=20; %Sampling at 20Hz
a=1;
f=1;  %Linear Frequency
w=2*pi*f; %Angular frequency
theta=pi/2;
t=0:1/fs:2*pi;
y=a*sin(w*t+theta);

figure;
plot(t,y);
figure;
stem(t,y);