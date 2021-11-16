%Plotting using symbolic algebra in Octave
close all
clear
clc

syms x y

figure
fplot('x^3+5*x^2+9*x+6')
figure
ezplot(x^3+5*x^2+9*x+6)
figure
ezplot(1+cos(x))
figure
ezpolar('x^3+5*x^2+9*x+6')
figure
ezpolar('1+cos(x)')