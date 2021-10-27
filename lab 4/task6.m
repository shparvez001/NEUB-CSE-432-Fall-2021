%Introduction to complex numbers in octave
close all
clear
clc

j=sqrt(-1);
a=3;
b=4;
c=a+j*b;
d=5+j*6;
disp(c);
disp(d);
x=5*c+10*d;
disp(x)

disp(real(x))
disp(imag(x))

disp(abs(c))
disp(angle(c)*360/(2*pi))