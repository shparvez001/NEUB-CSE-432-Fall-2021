# NEUB CSE 432 Fall 2021 Lab 9
Find all Codes/Files at  [Lab 9](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%209).

## Task 1
Create a 10 second time vector in MATLAB. Use fs (sampling rate) = 1000 Hz. 
Using the formula for a chirp from last lab create a chirp signal from this time vector.
Use the initial starting frequency f0= 10 Hz and a modulation index, µ=1. 
Plot this signal in both the time and frequency domains. In the frequency domain you should see a continuous band of frequencies starting at 10 Hz.


```matlab
clear 
close all
clc

L = 10;
fs = 1000;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
f0 = 10;
w = 2*pi*f0;
miu = 1;
x = cos(2*pi*(f0+t*miu).*t);
N = length(t);
F = fs/N;
f = f0+2*t*miu;
soundsc(x, fs);
plot(t,x);
xlabel('Time, t');
ylabel('Amplitude, x');
title('Chirp Signal in Time Domain');
X=fftshift(fft(x))/N; 
figure
plot(f,abs(X));
xlabel('Frequency, f');
ylabel('Magnitude of FFT');
title('Chirp Signal in Frequency Domain');
```

## Task 2
### Playing audio into MATLAB
Use the `square()` function to generate a train of pulses at a frequency well above the Nyquist rate. Choose the duty cycle to be very small (0.1 for example), to simulate ideal sampling.
`p=0.5*(1+square(w*t, 0.1)); %Only positive pulses`
Plot the pulse train on a new figure in both the time and frequency domain.

```matlab
clear 
close all
clc

L = 10;
fs = 1000;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
f0 = 10;
w = 2*pi*f0;
p = 0.5*(1+square(w*t, 0.1));
miu = 1;
f = f0+2*t*miu;
plot(t,p);
xlabel('Time, t');
ylabel('Amplitude, p');
title('Signal in Time Domain');
N = length(t);
X=fftshift(fft(p))/N; 
figure
plot(f,abs(X));
xlabel('Frequency, f');
ylabel('Magnitude of FFT');
title('Signal in Frequency Domain');
```

## Task 3
Multiply the square wave generated in task 2 with the chirp you generated in task 1. Use the following frequencies for the pulse rate (sampling rate): 50 Hz, 100Hz, 200Hz, 250 Hz, 500 Hz.
Again plot the time graph and frequency spectra of these sampled signals.

```matlab
close all
clear
clc

%Sampling Rate 50 Hz
L = 10;
fs = 50;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
f0 = 10;
w = 2*pi*f0;
miu = 1;
x = cos(2*pi*(f0+t*miu).*t);
p = 0.5*(1+square(w*t, 0.1));
xx = x.*p;
f = f0+2*t*miu;
plot(t,xx);
xlabel('Time, t');
ylabel('Amplitude, xx');
title('Signal in Time Domain');
axis([0 10 -2 2]);
N = length(t);
X=fftshift(fft(xx))/N; 
figure
plot(f,abs(X));
xlabel('Frequency, f');
ylabel('Magnitude of FFT');
title('Signal in Frequency Domain');

%Sampling Rate 100 Hz
L = 10;
fs = 100;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
f0 = 10;
w = 2*pi*f0;
miu = 1;
x = cos(2*pi*(f0+t*miu).*t);
p = 0.5*(1+square(w*t, 0.1));
xx = x.*p;
f = f0+2*t*miu;
figure
plot(t,xx);
xlabel('Time, t');
ylabel('Amplitude, xx');
title('Signal in Time Domain');
axis([0 10 -2 2]);
N = length(t);
X=fftshift(fft(xx))/N; 
figure
plot(f,abs(X));
xlabel('Frequency, f');
ylabel('Magnitude of FFT');
title('Signal in Frequency Domain');
```

## Task 4
### Down-sampling and Up-sampling
Down Sampling is used to decrease sampling rate and Up Sampling is used to increase the sampling rate.
```matlab
clear 
close all
clc

L = 10;
fs = 1000;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
f0 = 10;
w = 2*pi*f0;
p = 0.5*(1+square(w*t, 0.1));
miu = 1;
f = f0+2*t*miu;
plot(t,p);
xlabel('Time, t');
ylabel('Amplitude, p');
title('Signal in Time Domain');
N = length(t);
X=fftshift(fft(p))/N; 
figure
plot(f,abs(X));
xlabel('Frequency, f');
ylabel('Magnitude of FFT');
title('Signal in Frequency Domain');
```

## Task 3
Multiply the square wave generated in task 2 with the chirp you generated in task 1. Use the following frequencies for the pulse rate (sampling rate): 50 Hz, 100Hz, 200Hz, 250 Hz, 500 Hz.
Again plot the time graph and frequency spectra of these sampled signals.

```matlab
close all
clear
clc

x = [1 2 3 4 5 6 7 8 9 10];
y = downsample(x,3) %Decrease the sampling rate of a sequence by 3:
y = downsample(x,3,2) %Decrease the sampling rate of the sequence by 3 and add a phase offset of 2:
 
%Decrease the sampling rate of a matrix by 3:
x = [1 2 3; 4 5 6; 7 8 9; 10 11 12];
y = downsample(x,3);
x,y
 
 
%Upsampling
x = [1 2 3 4];
y = upsample(x,3);
x,y
 
%Increase the sampling rate of the sequence by 3 and add a phase offset of
%2:
x = [1 2 3 4];
y = upsample(x,3,2);
x,y
 
%Increase the sampling rate of a matrix by 3:
x = [1 2; 3 4; 5 6;];
y = upsample(x,3);
x,y
```


## Task 5
### Interpolation
Interpolation increases the original sampling rate for a sequence to a higher rate. interp performs lowpass interpolation by inserting zeros into the original sequence and then applying a special lowpass filter.

```matlab
close all
clear
clc

t = 0:0.001:1;     % Time vector
x = sin(2*pi*30*t) + sin(2*pi*60*t);
y = interp(x,4);
stem(x(1:30)); 
title('Original Signal');
figure
stem(y(1:120)); 
title('Interpolated Signal');
```


## Task 6
### Loading and showing image
Image files can be read using `imgread()` function.
The function `imshow()` can be used to display the image in a new figure window.
Use a small bitmap file for use.
For example

```matlab
data=imread('shuvro.bmp');
figure 
imshow(data)
title('Test Image');
```


## Task 7
### Down sampling, up sampling and interpolation of image
Use previously used down sampling, up sampling and interpolation techniques to resize image and then, create a larger image using upsampling and interpolation technique and see the difference.

```matlab
close all
clear
clc
data=imread('shuvro.bmp');
figure 
imshow(data)
title('Original image');
 
%DOwnsampling an image by a scale factor of 2. The same task can be done by
%image resize function
data1=downsample(data,2); %Downsample horizontal by a scale factor 0f 2
data1=downsample(data1.',2); %Downsample vertical by a scale factor 0f 2
data1=downsample(data1.',1); % Re orienting the image
figure
imshow(data1)
title('Down Sampled image');
 
%Upsampling example and its problem
data2=upsample(data1,2);
data2=upsample(data2.',2);
data2=upsample(data2.',1);
figure
imshow(data2)
title('Up Sampled image');
 
%trying to do interpolation
%to be done by students
```


## Report
For the lab report add all the codes and figures of class tasks and home tasks. 
Since there are many figures, printed copy is mandatory and copying from others will be heavily penalized. 
For a bit more of a challenge try the colour image, you will need to take into account the three layers (red, green, blue) when downsampling and restructuring this image. 
