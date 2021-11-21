<<<<<<< Updated upstream
# NEUB CSE 432 Fall 2021 Lab 5
Find all Codes at  [Lab 5](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%205).
## Task 1
Unit Ramp and Unit Step function using Unit Impulse Function
=======
# NEUB CSE 432 Fall 2021 Lab 4
Find all Codes at  [Lab 4](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%204).
## Task 1
Plotting combination of sine and cosine function
```matlab
close all
clear
clc

fs=1000;
f1=1;
f2=1;
a1=1;
a2=3;
phi1=0;
phi2=pi/4;
for i=1:5
  f2=f2+i;
  w1=2*pi*f1;
  w2=2*pi*f2;

  t=0:1/fs:2;
  y1=a1*sin(w1*t+phi1);
  y2=a2*cos(w2*t+phi2);
  y=y1+y2;

  figure
  plot(t,y)
  title(f2);
end  
```

## Task 2
Plotting exponential function
```matlab
close all
clear
clc

fs=100;
t=0:1/fs:20;
a=2;

y=a*exp(t);

figure
plot(t,y);
```

## Task 3
Plotting unit step function
>>>>>>> Stashed changes
```matlab
close all
clear
clc

fs=1;
a=1;
t=-10:1/fs:10;
<<<<<<< Updated upstream
impl=zeros(1,length(t));
for i=1:length(t)
  if(t(i)==0)
    impl(i)=a;
  else
    impl(i)=0;
  end
end
stp=zeros(1,length(t));
for i=0:max(t)
  stp=stp+circshift(impl,i);
end
rmp=zeros(1,length(t));
for i=0:max(t)
  rmp=rmp+i.*circshift(impl,i);
end
  
figure
stem(t,impl)
xlim([-15 15])
ylim([-3 3])
title('Impulse Function')  
  
figure
stem(t,stp)
xlim([-15 15])
ylim([-3 3])
title('Step Function Using Impulse Function')  
  
figure
stem(t,rmp)
xlim([-15 15])
title('Ramp Function Using Impulse Function')   
```

## Task 2
More details into plotting
=======
y=zeros(1,length(t));
for i=1:length(t)
  if(t(i)<0)
    y(i)=0;
  else
    y(i)=a;
  end
end

figure
plot(t,y)
xlim([-15 15])
ylim([-3 3])  
title('Continuous approximation')

figure
stem(t,y)
xlim([-15 15])
ylim([-3 3])
title('Actual')  
```

## Task 4
Plotting unit impulse function
>>>>>>> Stashed changes
```matlab
close all
clear
clc

<<<<<<< Updated upstream
fs=1;
a=1;
t=-10:1/fs:10;
impl=zeros(1,length(t));
for i=1:length(t)
  if(t(i)==0)
    impl(i)=a;
  else
    impl(i)=0;
  end
end
stp=zeros(1,length(t));
for i=0:max(t)
  stp=stp+circshift(impl,i);
end
rmp=zeros(1,length(t));
for i=0:max(t)
  rmp=rmp+i.*circshift(impl,i);
end
  
figure
subplot(1,3,1)
stem(t,impl)
xlim([-15 15])
ylim([-3 3])
ylabel('Signal Amplitude')
xlabel('Time')
title('Impulse Function')  

subplot(1,3,2)
stem(t,stp)
xlim([-15 15])
ylim([-3 3])
ylabel('Signal Amplitude')
xlabel('Time')
title('Step Function Using Impulse Function')  

subplot(1,3,3)  
stem(t,rmp)
xlim([-15 15])
ylabel('Signal Amplitude')
xlabel('Time')
title('Ramp Function Using Impulse Function')  

figure
plot(t,impl,'k',t,stp,'..r',t,rmp,'--g')
legend('Impulse', 'Step', 'Ramp')
```

## Task 3
Convolution using built-in function
=======
fs=1000;
a=1;
t=-10:1/fs:10;
y=zeros(1,length(t));
for i=1:length(t)
  if(t(i)==0)
    y(i)=a;
  else
    y(i)=0;
  end
end

figure
plot(t,y)
xlim([-15 15])
ylim([-3 3])  
title('Continuous approximation')

figure
stem(t,y)
xlim([-15 15])
ylim([-3 3])
title('Actual')  
```

## Task 5
Plotting unit ramp function
```matlab
close all
clear
clc

fs=1000;
a=1;
t=-10:1/fs:10;
y=zeros(1,length(t));
for i=1:length(t)
  if(t(i)<0)
    y(i)=0;
  else
    y(i)=a*t(i);
  end
end

figure
plot(t,y)
xlim([-15 15])
title('Continuous approximation')

figure
stem(t,y)
xlim([-15 15])
title('Actual')    
```


## Task 6
Introduction to complex numbers in octave
>>>>>>> Stashed changes
```matlab
close all
clear
clc

<<<<<<< Updated upstream
x=[0 1 2 3];
h=[1 4 9 6];
y=conv(x,h);

figure
subplot(3,1,1)
stem(x)
title('Input')
subplot(3,1,2)
stem(h)
title('Impulse Response')
subplot(3,1,3)
stem(y)
title('Output') 
```

## Task 4
Convolution without the built-in function.
```matlab
%To be done by students
```

## Task 5
Fourier Series of a square wave.
```matlab
%To be done by students  
```


## Tasks to be done by students
1. Task 4
2. Task 5
=======
j=sqrt(-1);
a=3;
b=4;
c=a+j*b;
d=5+j*6;
disp(c);
disp(d);
x=5*c+10*d;
disp(x)

disp(real(x))
disp(imag(x))

disp(abs(c))
disp(angle(c)*360/(2*pi))  
```


## Task 7
Sine and cosine component of a complex number
```matlab
close all
clear
clc

j=sqrt(-1);
fs=100;
t=0:1/fs:2;
a=1;
f=1;
w=2*pi*f;
y=exp(j*w*t);

figure
plot(t,real(y))
title('Real Part of exponential function e^j^w^t')
xlabel('t')
ylabel('Real(e^j^w^t)')

figure
plot(t,imag(y))
title('Imaginary Part of exponential function e^j^w^t')
xlabel('t')
ylabel('Imag(e^j^w^t)') 
```

>>>>>>> Stashed changes
