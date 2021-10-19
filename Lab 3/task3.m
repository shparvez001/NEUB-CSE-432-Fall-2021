% Observing effect of sampling frequency
close all
clear
clc

fs=20;
a=1;
f=5;  %Linear Frequency
w=2*pi*f; %Angular frequency
theta=pi/2;
for i=0:5
   fs=fs-4;
   t=0:1/fs:2;
   y=a*sin(w*t+theta);
   figure;
   plot(t,y);
end