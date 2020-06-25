clear all
close all
clc
fs=1500  %�dev pdf'inde s�ylendi
tx=0:1/fs:1-1/1500
y=cos(2*pi*10*tx)+2*cos(2*pi*30*tx) %Orjinal Sinyal

t = 0 : 1/1500 : 1-1/1500; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fs/20:end)=1; % �rnekleme frekans� d�r�t katar� icin

Sampled=y.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz

t = 1;  
n = [0:1/fs:1];
n = n(1:end - 1);
fc=20
duty=10
s = square(2*pi*20*n,10); %darbe katar�
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2)); %low pass filtre icin kesim freknas� 30
%freqz(B,A)
rend=filter(B,A,pam);%pam sinyaline g�re filte olusturuldu
subplot(421)
plot(tx,rend);
title('D�z Tepeli �rnek %10-DBO Geri Catma f�=20 Hz')
xlabel('t'),ylabel('wave')


s2 = square(2*pi*20*n,50);
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(422)
plot(tx,rend);
title('D�z Tepeli �rnek %50-DBO Geri Catma f�=20 Hz')
xlabel('t'),ylabel('wave')

%% 60 hz
impulseTrain(1:fs/60:end)=1;

Sampled=y.*impulseTrain;
fc=60
duty=10
s = square(2*pi*60*n,10);
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(423)
plot(tx,rend);
title('D�z Tepeli �rnek %10-DBO Geri Catma f�=60 Hz')
xlabel('t'),ylabel('wave')


s2 = square(2*pi*60*n,50);
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(424)
plot(tx,rend);
title('D�z Tepeli �rnek %50-DBO Geri Catma f�=60 Hz')
xlabel('t'),ylabel('wave')

%% 100 Hz
impulseTrain(1:fs/100:end)=1;

Sampled=y.*impulseTrain;
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
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(425)
plot(tx,rend);
title('D�z Tepeli �rnek %10-DBO Geri Catma f�=100 Hz')
xlabel('t'),ylabel('wave')

s2 = square(2*pi*100*n,50);
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(426)
plot(tx,rend);
title('D�z Tepeli �rnek %50-DBO Geri Catma f�=100 Hz')
xlabel('t'),ylabel('wave')

%% 200

impulseTrain(1:fs/250:end)=1;

Sampled=y.*impulseTrain;
fc=250
duty=10
s = square(2*pi*250*n,10);
s(find(s<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * duty/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(427)
plot(tx,rend);
title('D�z Tepeli �rnek %10-DBO Geri Catma f�=200 Hz')
xlabel('t'),ylabel('wave')

s2 = square(2*pi*250*n,50);
s2(find(s2<0)) = 0;
period_samp = length(n)/fc;
ind = [1:period_samp:length(n)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(n));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end
[B,A] = butter(10,30/(1500/2));
%freqz(B,A)
rend=filter(B,A,pam);
subplot(428)
plot(tx,rend);
title('D�z Tepeli �rnek %50-DBO Geri Catma f�=200 Hz')
xlabel('t'),ylabel('wave')


