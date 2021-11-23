%Poles, Zero after laplace transform
close all
clear
clc
% pkg install -forge symbolic %Install Symbolic Algebra Package
pkg load symbolic  %Load the symbolic algebra package

syms t s;
ft=5*t^2+3*t+9;
fs=laplace(ft);
[n,d]=numden(fs);
n=sym2poly(n);
d=sym2poly(d);
allzeros=roots(n)
allpoles=roots(d)
pkg load control %Load Control package
pzmap(tf(n,d))