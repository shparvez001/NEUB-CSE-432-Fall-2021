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