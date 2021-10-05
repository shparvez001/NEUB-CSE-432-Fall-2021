%Plotting sine and cosine curve
close all
clear
clc
ts=0.01;
x=[0:ts:4*pi];
y=cos(x);
z=sin(x);
figure();
plot(x,y);
figure();
stem(x,z);