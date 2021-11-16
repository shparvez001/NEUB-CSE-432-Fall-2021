# NEUB CSE 432 Fall 2021 Lab 5
Find all Codes at  [Lab 5](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%205).
## Task 1
Unit Ramp and Unit Step function using Unit Impulse Function
```matlab
close all
clear
clc

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
```matlab
close all
clear
clc

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
```matlab
close all
clear
clc

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