% String input output. Adding a variable in an array.
close all
clear
clc

var={};
n=input('No of inputs: ');
for i=1:n
  x=input('Enter a string: ', 's');
  var=[var x];
end

for i=1:n
  printf('%s\n', var{i});
end  