# NEUB CSE 432 Fall 2021 Lab 6
Find all Codes at  [Lab 6](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%206).
## Task 1
Introduction to symbolic algebra in Octave
```matlab
close all
clear
clc
%pkg install -forge symbolic %install Symbolic Algebra Package
pkg load symbolic
syms x
a=solve(x-5==0);
a=solve(x^2-5*x+10==0);
a=solve(x^2+7*x+12==0);
disp(a) %Display Result
pretty(a) % Show result in a nice form

%Solving multivariable equations
%5x^2+3xy+9=0
syms x y
solve(5*x*x+3*x*y+9==0,x) %After comma add the variable with whose respect solution is necessary
solve(5*x*x+3*x*y+9==0,y)

%Solving Simultaneous Equations
%2x+3y+9z=5
%3x-2y+3z=2
%5x+5y+9z=100
syms x y z
res=solve(2*x+3*y+9*z==5,3*x-2*y+3*z==2,5*x+5*y+9*z==100)
disp(res.x)
disp(res.y)
disp(res.z)

expand((x-2)*(x+5))
expand((x-2)^5*(x+5)^2)
expand(cos(x+y))

factor(x^2-6*x+8)
factor(x^5-14*x^4+76*x^3-200*x^2+256*x-128)
simplify((x^2-4*x+4)/(x^2-4))
simplify(sin(x)^2+cos(x)^2)
```

## Task 2
Roots and related functions in Octave
```matlab
close all
clear
clc

p=[1 7 12]  %Defining constants of polynomial: x^2+7*x+12
roots(p) %Finding  roots of the polynomial

p=[5 0 0 3 7 9]
roots(p)
```

## Task 3
Integration and Differentiation in Octave
```matlab
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
```

## Task 4
Symbolic Fourier Transform in Octave
```matlab
close all
clear
clc

pkg load symbolic
syms a t w x

fourier(exp(1i*a*t))
fourier(dirac(t))
fourier(exp(-x^2))
fourier(fourier(dirac(t)))
```

## Task 5
Plotting using symbolic algebra in Octave
```matlab
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
```