# NEUB CSE 432 Fall 2021
Find all Codes at  [Lab 2](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%202).
## Task 1
Introduction to MATLAB syntax
```matlab
clc %Clears command window
a=5;
b=6;
c=a+b;
%disp(c);
fprintf('The value of C is %g\n', c);
c=a-b;
c=a*b;
c=a/b;
%Defining Matrix
a=[1 4 6]
b=[1 2 3 ; 4 5 6]
c=[1 2 3; 4 5 6; 7 8 9]
d=[9 8 7; 6 5 4; 3 2 1]
Matrix Operation
c+d
x=c*d
y=c/d
%Concatanating matrix
f=[c d]
g=[c;d]
%Finding elements from a matrix
g(3,2)
g(6,3)
g(6,2)
g(1,:)
g(:,1)

clear   % Clears the workspace
close all  %Close all graphing windows
clc %Clears xommand window

a=[1:6;7:12;13:18]
b=[1:2:10;2:2:11]
b=[10:-1:1;11:-1:2]

magic(4)
rand(4)
rand(4,3)

r=5;
area=pi*r*r;
r^2
area=pi*r^2
disp(area)
pi
a=cos(pi/2)
b=cos(0)
c=sin(pi/2)
a=cosd(90)
a=cos((5*pi)/180)
a=cosd(5)

%Matlab by default does operation with a variable by considering it as a matrix.
x=[1:6;7:12;13:18]
y=sin(x)
```

## Task 2
Basics of Plotting
```matlab
%Plotting sine and cosine curve
close all
clear
clc
ts=0.01;
x=[0:ts:4*pi];
y=cos(x);
z=sin(x);
figure();
plot(x,y);
figure();
stem(x,z);
```

## Task 3
Using branching
```matlab
%Use of input function and if branching
close all
clear
clc

r=input("Radius: ");

##area=pi*r*r;
##circ=2*pi*r;
##fprintf("Area is %g\t\t and circumference is %g\n", area, circ);

if r>=0
  area=pi*r*r;
  circ=2*pi*r;
  fprintf("Area is %g\t\t and circumference is %g\n", area, circ);
elseif r<0
  fprintf("Radius is less than 0\n");
end 
```

## Task 4
Using For Loop
```matlab
%Use of for loop
close all
clear
clc

n=input("Number of Iterations= ");

for i=1:1:n
  r=input("Radius: ");
  if r>=0
    area=pi*r*r;
    circ=2*pi*r;
    fprintf("Area is %g\t\t and circumference is %g\n", area, circ);
  elseif r<0
    fprintf("Radius is less than 0\n");
  end 
end
```

## Task 5
Another Spin on Task 4
```matlab
%Another spin on task 4
close all
clear
clc

n=input("Number of Iterations= ");
r=[];
for i=1:1:n
  x=input("Radius: ");
  r=[r x];
end 

area=pi*r.*r
circ=2*pi*r
for i=1:1:n
  if r(i)>=0
    fprintf("if Radius is %g Area is %g\t\t and circumference is %g\n", r(i), area(i), circ(i));
  else
    fprintf("Radius is less than 0\n");
  end
end 
```

## Tasks to be done by students
1. Change code of task 4 in class such that if the radius is negative, it will show and error message and take another input without incrementing the loop.
