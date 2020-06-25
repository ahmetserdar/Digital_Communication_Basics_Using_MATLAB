clear all
close all
clc
%% 60
fs=1500  %�dev pdf'inde s�ylendi
ts=1/fs;
tx=0:1/fs:1-ts; 
yx=cos(2*pi*10*tx)+2*cos(2*pi*30*tx) %Orjinal Sinyal
t = 0 : 1/1500 : 1-1/1500; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fs/20:end)=1; %%20 hz i�in
Sampled=yx.*impulseTrain;
t = 1;  
n = [0:1/fs:t];
n = n(1:end - 1);
fc=20
duty=10
s = square(2*pi*20*n,10);
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
NF=2048;
 df=-NF/2:1:NF/2-1;
y=fs/NF; 
fY=y*df;
frequency=fft(pam,NF);
y_mag=abs(frequency);
subplot(421)
plot(fY,y_mag)
title('D�zTepeli �rneklenmi� ��aret  %10-DBO f�=20Hz')
xlabel('frekans Hz')
s2 = square(2*pi*20*n,50); %% 50 y�zde50 doluluk bo
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
frequency=fftshift(fft(pam,NF));
y_mag2=abs(frequency);
df=-NF/2:1:NF/2-1;
subplot(422)
plot(fY,y_mag2)
 title('D�z Tepeli �rnekleni� ��aret %50-DBO f�=20 Hz')
xlabel('frekans Hz')
%% 60
fs=1500  %�dev pdf'inde s�ylendi
ts=1/fs;
tx=0:1/fs:1-ts;
yx=cos(2*pi*10*tx)+2*cos(2*pi*30*tx)
t = 0 : 1/1500 : 1-1/1500; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fs/60:end)=1;
Sampled=yx.*impulseTrain;
t = 1;  
n = [0:1/fs:t];
n = n(1:end - 1);
fc=60
duty=10
s = square(2*pi*60*n,10);
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);
pam2 = zeros(1,length(n));
for i = 1 : length(ind)
   pam2(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
NF=2048;     %frekans ayarland�
df=-NF/2:1:NF/2-1;
y=fs/NF; 
fY=y*df;

frequency=fft(pam2,NF); % d�z teplei �rnelenmi� isaretin fftsi
y_mag=abs(frequency); %abd de�eri olarak cizdirilmek icin

subplot(423)
plot(fY,y_mag);
title('D�zTepeli �rneklenmi� ��aret  %10-DBO f�=60Hz')
xlabel('frekans Hz')
s2 = square(2*pi*60*n,50); %f�=60 %50 doluluk-bosluk 
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam3 = zeros(1,length(n));
for i = 1 : length(ind)
   pam3(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
frequency=fftshift(fft(pam3,NF));
y_mag=abs(frequency);
subplot(424)
plot(fY,y_mag)
 title('D�z Tepeli �rnekleni� ��aret %50-DBO f�=60 Hz')
xlabel('frekans Hz')


fs=1500  %�dev pdf'inde s�ylendi
ts=1/fs;
tx=0:1/fs:1-ts;
yx=cos(2*pi*10*tx)+2*cos(2*pi*30*tx) %Orjinal Sinyal

t = 0 : 1/1500 : 1-1/1500; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fs/100:end)=1;

Sampled=yx.*impulseTrain;

t = 1;  
n = [0:1/fs:t];
n = n(1:end - 1);
fc=100
duty=10
s = square(2*pi*100*n,10);
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);

pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end

frequency=fft(pam,NF);
y_mag=abs(frequency);


subplot(425)
plot(fY,y_mag)
title('D�zTepeli �rneklenmi� ��aret  %10-DBO f�=100Hz')
xlabel('frekans Hz')

s2 = square(2*pi*100*n,50);
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
frequency=fft(pam,NF);
y_mag2=abs(frequency);

df=-NF/2:1:NF/2-1;

subplot(426)
plot(fY,y_mag2)
 title('D�z Tepeli �rnekleni� ��aret %50-DBO f�=100 Hz')
xlabel('frekans Hz')

 t = 0 : 1/1500 : 1-1/1500; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fs/250:end)=1;

Sampled=yx.*impulseTrain;

t = 1;  
n = [0:1/fs:t];
n = n(1:end - 1);
fc=250
duty=10
s = square(2*pi*250*n,10);
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind =[1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);

pam = zeros(1,length(n));
for i = 1 : length(ind)
    
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end

frequency=fft(pam,NF);
y_mag=abs(frequency);


subplot(427)
plot(fY,y_mag)
title('D�zTepeli �rneklenmi� ��aret  %10-DBO f�=200Hz')
xlabel('frekans Hz')

s2 = square(2*pi*250*n,50);
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
frequency=fftshift(fft(pam,NF));
y_mag2=abs(frequency);

df=-NF/2:1:NF/2-1;

subplot(428)
plot(fY,y_mag2)
 title('D�z Tepeli �rnekleni� ��aret %50-DBO f�=200 Hz')
xlabel('frekans Hz')

