%Plotting unit step function
close all
clear
clc

fs=1;
a=1;
t=-10:1/fs:10;
y=zeros(1,length(t));
for i=1:length(t)
  if(t(i)<0)
    y(i)=0;
  else
    y(i)=a;
  end
end

figure
plot(t,y)
xlim([-15 15])
ylim([-3 3])  
title('Continuous approximation')

figure
stem(t,y)
xlim([-15 15])
ylim([-3 3])
title('Actual')  