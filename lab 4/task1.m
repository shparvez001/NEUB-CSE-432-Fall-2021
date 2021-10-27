%Plotting combination of sine and cosine function
close all
clear
clc

fs=1000;
f1=1;
f2=1;
a1=1;
a2=3;
phi1=0;
phi2=pi/4;
for i=1:5
  f2=f2+i;
  w1=2*pi*f1;
  w2=2*pi*f2;

  t=0:1/fs:2;
  y1=a1*sin(w1*t+phi1);
  y2=a2*cos(w2*t+phi2);
  y=y1+y2;

  figure
  plot(t,y)
  title(f2);
end  
