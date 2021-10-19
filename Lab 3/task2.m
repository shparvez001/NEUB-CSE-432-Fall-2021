% Plotting Cosine curve
close all
clear
clc

fs=20; %Sampling at 20Hz
a=5;
f=1;  %Linear Frequency
w=2*pi*f; %Angular frequency
theta=0;
t=0:1/fs:2*pi;
y=a*cos(w*t+theta);

figure;
plot(t,y);
figure;
stem(t,y);