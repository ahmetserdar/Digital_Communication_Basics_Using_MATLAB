clear all
close all
clc
%% 20
Fs=1500; 
t=0:1/Fs:1-1/Fs;
yt=(cos(2*pi*10*t)+2*cos(2*pi*30*t));

NF=2048;     %%Frekans ayar� i�in
 df=-NF/2:1:NF/2-1;
y=Fs/NF; 
fY=y*df;

frequency=fftshift(fft(yt,NF)); %%orjinal sinyalin fft'si
y_mag=abs(frequency); %abs de�eri ile �izdirmek i�in
% subplot(321)
% plot(fY,y_mag);
% title('Giris �sareti Frekans Uzay�')
% xlabel('frekans Hz')
% ylabel('amplitude')

impulseTrain=zeros(size(t));
impulseTrain(1:Fs/20:end)=1; % d�rt� katar� 20 hz
Sampled1=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz
frequency1=fftshift(fft(Sampled1,NF)); % �deal d�rt� �rn. fft al�m�
y1_mag=abs(frequency1); %% abs de�eri ile �izdirmek i�in
subplot(321)
plot(fY,y1_mag);
title('�deal �rneklenmi� i�aret 20Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')
%% 60
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/60:end)=1;
Sampled2=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

frequency2=fftshift(fft(Sampled2,NF));
y2_mag=abs(frequency2);

subplot(322)
plot(fY,y2_mag);
title('�deal �rneklenmi� i�aret 60Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')

impulseTrain=zeros(size(t));
impulseTrain(1:Fs/100:end)=1;

Sampled4=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

frequency4=fftshift(fft(Sampled4,NF));
y4_mag=abs(frequency4);
subplot(323)
plot(fY,y4_mag);
title('�deal �rneklenmi� i�aret 100Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')

impulseTrain=zeros(size(t));
impulseTrain(1:Fs/200:end)=1;

Sampled3=yt.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

frequency3=fftshift(fft(Sampled3,NF));
y3_mag=abs(frequency3);

subplot(324)
plot(fY,y3_mag);
title('�deal �rneklenmi� i�aret 200Hz Frekans Uzay�')
xlabel('frekans Hz')
ylabel('amplitude')