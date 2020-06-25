clear all
close all
clc
%% 20 Hz
Fs=1500;
t=0:1/Fs:1-1/Fs;
NF=2048;
df=-NF/2:1:NF/2-1;
y=Fs/NF; 
fY=y*df;
s=cos(2*pi*10*t)+2*cos(2*pi*30*t);
tx = 0 : 1/1500 : 1-1/1500;
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/20:end)=1;
Sampled=s.*impulseTrain;
[B,A] = butter(10,30/(1500/2)); %30 cutof frequency %lowpasfiltre
%freqz(B,A)
rend=filter(B,A,Sampled);
subplot(421)
plot(tx,rend);
title('Geri �atma s�zgeci uyguland� 20 Hz')
xlabel('t'),ylabel('wave')
frequency1=fftshift(fft(rend,NF));
y1_mag=abs(frequency1);

subplot(422)
plot(df,y1_mag);
title('Geri �atma �deal �rneklenmi� i�aret  20Hz Frekans Uzay�')
xlabel('frekans')
ylabel('amplitude')

%% 60 Hz

impulseTrain=zeros(size(t));
impulseTrain(1:Fs/60:end)=1;
Sampled=s.*impulseTrain;
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,Sampled);
subplot(423)
plot(tx,rend);
title('Geri �atma �deal �rneklenmi� ��aret 60 Hz Zaman Uzay� ')
xlabel('t'),ylabel('wave')
frequency1=fftshift(fft(rend,NF));
y1_mag=abs(frequency1);

subplot(424)
plot(df,y1_mag);
title('Geri �atma �deal �rneklenmi� i�aret  60Hz Frekans Uzay�')
xlabel('frekans')
ylabel('amplitude')

%% 100 Hz

impulseTrain=zeros(size(t));
impulseTrain(1:Fs/100:end)=1;
Sampled=s.*impulseTrain;
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,Sampled);
subplot(425)
plot(tx,rend);
title('Geri �atma �deal �rneklenmi� ��aret 100 Hz Zaman Uzay� ')
xlabel('t'),ylabel('wave')
frequency1=fftshift(fft(rend,NF));
y1_mag=abs(frequency1);

subplot(426)
plot(df,y1_mag);
title('Geri �atma �deal �rneklenmi� i�aret  100Hz Frekans Uzay�')
xlabel('frekans')
ylabel('amplitude')

%% 200 Hz
impulseTrain=zeros(size(t));
impulseTrain(1:Fs/200:end)=1;
Sampled=s.*impulseTrain;
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,Sampled);
subplot(427)
plot(tx,rend);
title('Geri �atma �deal �rneklenmi� ��aret 200 Hz Zaman Uzay� ')
xlabel('t'),ylabel('wave')
frequency1=fftshift(fft(rend,NF));
y1_mag=abs(frequency1);
subplot(428)
plot(df,y1_mag);
title('Geri �atma �deal �rneklenmi� i�aret  200Hz Frekans Uzay�')
xlabel('frekans')
ylabel('amplitude')

