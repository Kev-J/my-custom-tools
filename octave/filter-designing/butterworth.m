clear all;

pkg load signal

# Inputs
###################

fSampling = input("Sampling frequency : ");
fc = input("Cut-off frequency : ");
filterOrder = input("Filter order : ");

# Processing
###################

fNyquist = fSampling/2;

[b,a] = butter(filterOrder, fc/fNyquist);

# Display

disp("a coef : "), disp(a)
disp("b coef : "), disp(b)


figure('name','Frequency response')
freqz(b, a, 512, fSampling)

figure('name', 'Poles and zeroes')
zplane(b,a)

pause
