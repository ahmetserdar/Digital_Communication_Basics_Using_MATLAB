clear all
close all
clc

Fs=1500; 
t=0:1/Fs:1-1/Fs;
yt=(cos(2*pi*10*t)+2*cos(2*pi*30*t));

NF=2048;     %%Frekans ayar� i�in
 df=-NF/2:1:NF/2-1;
y=Fs/NF; 
fY=y*df;

%% 20
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/20:end)=1; %f�=60 d�rt� katar� 
Sampled2=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

frequency2=fftshift(fft(impulseTrain,NF)); %fft islemi
y2_mag=abs(frequency2); %abs de�eri ile �izdirmek icin
subplot(321)
plot(fY,y2_mag);
title('�deal i�in �rnekleme i�areti 20Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')
%% 60
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/60:end)=1; %f�=60 d�rt� katar� 
Sampled2=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

frequency2=fftshift(fft(impulseTrain,NF)); %fft islemi
y2_mag=abs(frequency2); %abs de�eri ile �izdirmek icin
subplot(322)
plot(fY,y2_mag);
title('�deal i�in �rnekleme i�areti 60Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')
%% 100
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/100:end)=1; %f�=60 d�rt� katar� 

frequency2=fftshift(fft(impulseTrain,NF)); %fft islemi
y2_mag=abs(frequency2); %abs de�eri ile �izdirmek icin
subplot(323)
plot(fY,y2_mag);
title('�deal i�in �rnekleme i�areti 100Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')
%% 200
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/200:end)=1; %f�=60 d�rt� katar� 
Sampled2=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

frequency2=fftshift(fft(impulseTrain,NF)); %fft islemi
y2_mag=abs(frequency2); %abs de�eri ile �izdirmek icin
subplot(324)
plot(fY,y2_mag);
title(' �deal i�in �rnekleme i�areti 60Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')


