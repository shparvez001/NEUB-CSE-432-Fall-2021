# NEUB CSE 432 Fall 2021 Lab 8
Find all Codes/Files at  [Lab 8](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%208).

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
*Now create different notes marked in bold in the table.*

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
%To be done by students
```


## Task 7
### Creating the first AM signal
Create a new MATLAB file and set up time and frequency vectors for a signal that will be 3 seconds long.
The first signal to be created is a sinusoid, amplitude modulated with a decaying exponential envelope. E.g.

![Equation 2](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/e2.png)

To do this start by creating the sinusoid with frequency fm = 350 Hz
Now multiply this sinusoid with the exponential envelope I0e-t /τ , set τ = 1 and I0 = 3 to start with.
Plot this initial signal.
Use soundsc() to also listen to the amplitude modulated signal.

```matlab
%To be done by students
```


## Task 8
### Frequency modulated signal
We next want to use this signal to frequency modulate another sinusoidal signal:

![Equation 3](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/e3.png)

We have `x(t)` from the previous task so now use MATLAB to generate this new frequency modulated signal by setting `fc= 250 Hz` and including the added `x(t)` component.
Plot this new waveform and use soundsc() to listen to it as well. This is now sounding a lot like a bell, but it’s not perfect yet.


```matlab
%To be done by students
```


## Task 9
### Application of final envelope 
Finally we need to apply the final envelope to the bell sound, this envelope is identical to the envelope generated originally in task 7:

![Equation 4](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/e4.png)

Multiply `y(t)` with this envelope and use `soundsc()` to listen to the final bell sound.  Plot this final waveform

```matlab
%To be done by students
```



## Home Task for lab report
1. Use some of the parameters in Table below to change the sound of the bell.
![Table 2](https://raw.githubusercontent.com/shparvez001/NEUB-CSE-432-Fall-2021/main/Lab%208/img/t2.png)

## Report
For the lab report add all the codes and plots of class tasks and home tasks. 
Since there are many figures, printed copy is mandatory and copying from others will be heavily penalized.