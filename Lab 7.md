# NEUB CSE 432 Fall 2021 Lab 7
Find all Codes at  [Lab 7](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%207).
## Pre-Lab
To run some of the codes in this lab, symblic algebra package is necessary. To install symblic algebra package run the following line in command window.
```matlab
pkg install -forge symbolic 
```
This could take some time.

After successfull installation, to load the package, run the following line of code before using the package
```matlab
pkg load symbolic
```

## Task 1
Symbolic Laplace Transform in Octave
```matlab
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
```

## Task 2
Poles, Zero after laplace transform
```matlab
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
```

## Task 3
Poles, Zero from polynomials
```matlab
close all
clear
clc

pkg load control %Load Control package
n=[10 20 30];
d=[40 50 60];
sys=tf(n,d)
allpoles=pole(sys)
allzeros=zero(sys)

poles_using_root=roots(d)
zeros_using_root=roots(n)

den=poly(poles_using_root)
num=poly(zeros_using_root)
```

## Task 4
Cross Correlation in Octave
```matlab
close all
clear
clc

pkg load signal
a=input("Coeeficient a: ");
b=input("Coeeficient b: ");
%a=[1 2 3 4];
%b=[7 8 9 10]
crosscorrelation=xcorr(a,b)
figure
subplot(3,1,1)
stem(a); axis([-2 10 -5 10]);
subplot(3,1,2)
stem(b); axis([-2 10 -5 10]);
subplot(3,1,3)
stem(crosscorrelation); axis([-2 10 -5 100]);

```

## Task 5
Auto Correlation in Octave
```matlab
close all
clear
clc

pkg load signal
a=input("Coeeficient a: ");
%a=[1 2 3 4];
crosscorrelation=xcorr(a,a)
figure
subplot(3,1,1)
stem(a); axis([-2 10 -5 10]);
subplot(3,1,2)
stem(a); axis([-2 10 -5 10]);
subplot(3,1,3)
stem(crosscorrelation); axis([-2 10 -5 100]);
```

## Task 6
FFT using Built-in function
```matlab
close all
clear
clc

f=10;
fs=50;
t=0:1/fs:3;
w=2*pi*f;
y=cos(w*t);

figure
plot(t,y)

%Sinlge Sided
f=(0:511)*fs/1024;
z=fft(y,1024);
magz=abs(z(1:512));
figure 
plot(f,magz)

%Both Sided
f=(-512:511)*fs/1024;
z=fft(y,1024);
magz=abs(z(1:512));
magzz=[];
for i=1:512
  magzz(i)=magz(512-i+1);
end
zz=[magzz magz];
figure 
plot(f,zz)
```

## Task 7
Write a code to find the cross correlation of 2 signals without using any built-in functions.
```matlab
%TO be done by students
```

## Tasks to be done by students
1. Task 7: Write a code to find the cross correlation of 2 signals without using any built-in functions.