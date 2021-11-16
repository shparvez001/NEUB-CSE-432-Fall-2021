%Convolution using built-in function
close all
clear
clc

x=[0 1 2 3];
h=[1 4 9 6];
y=conv(x,h);

figure
subplot(3,1,1)
stem(x)
title('Input')
subplot(3,1,2)
stem(h)
title('Impulse Response')
subplot(3,1,3)
stem(y)
title('Output')