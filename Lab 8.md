# NEUB CSE 432 Fall 2021 Lab 7
Find all Codes at  [Lab 7](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%207).
## Pre-Lab
To run some of the codes in this lab, symblic algebra package is necessary. To install symblic algebra package run the following line in command window.
```matlab
pkg install -forge symbolic 
```
This could take some time.

After successfull installation, to load the package, run the following line of code before using the package
```matlab
pkg load symbolic
```

## Task 1
### Importing audio into MATLAB
Audio can be imported into MATLAB using `audioread()`or `wavread()`functions. For Octave the function `wavread()` doesnot works. The example below shows importing a sound and plotting it.

```matlab
clear 
close all
clc

[y, Fs]=audioread('Tuning fork 1.wav');

sample=length(y);
totaltime=sample/Fs;

t=1:sample;
t=t/Fs;

y_fft = abs(fft(y));           
y_fft = y_fft(1:sample/2);     
f = Fs*(0:sample/2-1)/sample;

figure
plot(t,y)

figure
plot(f, y_fft)
```

## Task 2
### Playing audio into MATLAB
Any sound generated using MATLAB and imported in MATLAB/Octave can be listened using `soundsc(y, Fs);` function.
Below is an extension of the previous example.
```matlab
clear 
close all
clc

[y, Fs]=audioread('Tuning fork 1.wav');

sample=length(y);
totaltime=sample/Fs;

t=1:sample;
t=t/Fs;

y_fft = abs(fft(y));           
y_fft = y_fft(1:sample/2);     
f = Fs*(0:sample/2-1)/sample;
soundsc(y, Fs);

figure
plot(t,y)

figure
plot(f, y_fft)
```

## Task 3
### Creating and playing different into MATLAB
The table below shows the frequency for different notes.
![Frequency of Notes](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/notes.png)
As an example
```matlab
close all
clear
clc

L = 2;
fs = 11025;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
w = 2*pi*440;
A = 5;
x = A * sin(w*t);
soundsc(x, fs);
plot(t,x);
xlabel('Time, t');
ylabel('Amplitude, x');
title('Simple Sine wave with Frequency 440Hz');
axis([0 2 -1 1]);
```
**Now created different notes marked in bold in the table.**

## Task 4
### Creating and playing a beat note into MATLAB
A beat note is a phenomenon that occurs when two sinusoids of different frequencies are multiplied together.
Musicians are usually familiar with the beat note phenomena since it often occurs when two instruments that are slightly out of tune try to play the same note at the same time. The effect of
listening to this is of a ‘pulsing’ sound of varying amplitude depending on the amount of variation between instrument tunings.
Beat notes are a type of Amplitude Modulation (AM) which is a common technique in the communications field where it is used in radio communications.
Create another sinusoid of much lower frequency to the first (tens of Hz rather than hundreds of Hz) and multiply this new sinusoid with the first. Use `soundsc()` to listen to the new modulated signal (this signal may sound a bit like a dial-tone on a telephone).
`xmod = x1.*x2; % .* performs vector multiplication of x1 and x2`
Plot this signal on a new figure, change the x axis limits until you see approx. four periods of the signal and observe the ‘envelope’ of the waveform. (Envelope is another name for the amplitude fluctuations of the modulated waveform).


## Task 5
### Creating and playing a chirp note into MATLAB
A chirp is also called a linear frequency modulated (LFM) signal and occurs when the frequency of a sinusoid is increased or decreased linearly over time. Chirp signals are useful in signal processing when examining the effects systems have on a varying range of frequencies or how a system responds to a wide bandwidth signal. A chirp can be mathematically produced by the following formula:
![Equation 1](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/e1.png)
Where f0 is the initial starting frequency of the chirp and µ is a term (sometimes called the modulation index) which determines the rate of frequency change over time ( µ can be positive or negative depending on whether the chirp increases or decreases in frequency over time).
Chirps are also a variant on a type of modulation called Frequency Modulation (FM) which again is a technique commonly used in radio communications. Using the 2 second time vector created in task 1 create a chirp waveform by using equation above. Set the initial frequency to 440 Hz and make sure the final frequency is double this (880 Hz). 
Use `soundsc()` to listen to the chirp signal.
```matlab
close all
clear
clc

L = 2;
fs = 11025;
Ts = 1/fs;
t  = 0:Ts:L-Ts;
f0 = 440;
w = 2*pi*f0;
miu = 220;
x = cos(2*pi*(f0+t.*miu).*t);
N = length(t);
F = fs/N;
f = f0+t*miu;
soundsc(x, fs);
plot(f,x);
xlabel('Frequency, f');
ylabel('Modulation, x');
title('Creating a Chirp Signal');
```
Change µ and the initial frequency to create chirps that start and end at the following frequencies:
![Table 1](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/t1.png)
## Task 5.2
Visualize frequency spectrum all the signal generated.

## Task 6
### The spectrogram
Use the MATLAB function `spectrogram()` to create spectrograms of the chirp signals generated in the last task. Set window and nfft to 1024, leave noverlap blank ([]) to give a 50% overlap between windows. Make sure the colorbar is active on the figure (type in colorbar or select Insertcolorbar on the figure window).
```matlab
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
```

## Task 7
Write a code to find the cross correlation of 2 signals without using any built-in functions.
```matlab
%TO be done by students
```

## Tasks to be done by students
1. Task 7: Write a code to find the cross correlation of 2 signals without using any built-in functions.