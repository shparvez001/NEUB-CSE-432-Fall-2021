%Integration and Differentiation in Octave
close all
clear
clc

pkg load symbolic
syms x t

f=sin(x)^2
diff(f)
diff(f,6)
diff(f,60)
int(f)
int(f,0,1)
int(f,0,100)