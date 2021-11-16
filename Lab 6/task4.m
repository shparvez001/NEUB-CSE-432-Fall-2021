%Symbolic Fourier Transform in Octave
close all
clear
clc

pkg load symbolic
syms a t w x

fourier(exp(1i*a*t))
fourier(dirac(t))
fourier(exp(-x^2))
fourier(fourier(dirac(t)))