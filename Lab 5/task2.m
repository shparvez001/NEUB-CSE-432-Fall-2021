%More details into plotting
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