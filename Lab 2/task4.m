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

%Task for students
%Change this code such that if the radius is negative, it will show and error message and take another input without incrementing the loop.