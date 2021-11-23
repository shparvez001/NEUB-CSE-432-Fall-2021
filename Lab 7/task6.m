%FFT using Built-in function
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