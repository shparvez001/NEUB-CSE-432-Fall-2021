%Symbolic Laplace Transform in Octave
close all
clear
clc
% pkg install -forge symbolic %Install Symbolic Algebra Package
pkg load symbolic  %Load the symbolic algebra package

syms t a s;

%Laplace Transform
y1=exp(-a*t);
laplace(y1)
y2=exp(-3*t);
laplace(y2)

y3=exp(-3*t)+exp(2*t);
laplace(y3)
y4=exp(-3*t)+exp(2*t)+exp(-5*t);
laplace(y4)

y5=dirac(t);
laplace(y5)

y6=heaviside(t);
laplace(y6)

%Inverse Laplace Transform
fs=(7*s-6)/(s^2-s-6);
ilaplace(fs)
expand(ilaplace(fs))