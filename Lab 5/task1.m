%Unit Ramp and Unit Step function using Unit Impulse Function
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