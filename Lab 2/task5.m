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
