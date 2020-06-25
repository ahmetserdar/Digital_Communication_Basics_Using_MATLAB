 close all;
 clear all;
 clc;
 
fs=1500  %�dev pdf'inde s�ylendi
tx=0:1/fs:1
y=cos(2*pi*10*tx)+2*cos(2*pi*30*tx);
t = 0 : 1/1500 : 1; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fs/20:end)=1;
Sampled=y.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz
t = 1;  
nx = [0:1/fs:t];
nx = nx(1:end - 1);
fc=20
duty=50
s2 = square(2*pi*20*nx,50); %darbe katar�
s2(find(s2<0)) = 0;
period_samp = length(nx)/fc;
ind = [1:period_samp:length(nx)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(nx));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end

L=8; %n=3bit 2^n=8 seviye

t=0:1/1500:1;
xmax=abs(max(pam)); 
adim_araligi=2*xmax/L;
partition=-(L/2-1)*adim_araligi:adim_araligi:(L/2-1)*adim_araligi; %giri� seviyesi
codebook=-((L-1)*adim_araligi/2):adim_araligi:((L-1)*adim_araligi/2); %��k�� seviyesi
[indx xq]=quantiz(pam,partition,codebook); 
%pam sinyalini giri� ve ��k��a g�re kuantalama islemi
subplot(421)
stem(nx,xq);
title('20 Hz i�in 3 bit kuantalanm�� i�aret')
hata=pam-xq;   %hatay� hesaplatan k�s�m 
ortalama_hata=sum(hata.^2)./length(hata);   %ortalama kuantalama hatas�
SNR_hesaplat=10*log10(var(pam)/var(hata)) %snr hesab�(Ps/P(n,q))
P=var(pam); %%P(s) g�rmek icin 
%% 60
impulseTrain(1:fs/60:end)=1;
Sampled=y.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz
t = 1;  
nx = [0:1/fs:t];
nx = nx(1:end - 1);
fc=60
duty=50
s2 = square(2*pi*60*nx,50); %darbe katar�
s2(find(s2<0)) = 0;
period_samp = length(nx)/fc;
ind = [1:period_samp:length(nx)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(nx));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end

L=8; %n=3bit 2^n=8 seviye

t=0:1/1500:1;
xmax=abs(max(pam)); %xmax=4;

adim_araligi=2*xmax/L;
partition=-(L/2-1)*adim_araligi:adim_araligi:(L/2-1)*adim_araligi; %giri� seviyesi

codebook=-((L-1)*adim_araligi/2):adim_araligi:((L-1)*adim_araligi/2); %��k�� seviyesi

[indx xq]=quantiz(pam,partition,codebook); 
%pam sinyalini giri� ve ��k��a g�re kuantalama islemi
subplot(422), stem(nx,xq);
title('60 Hz i�in 3 bit kuantalanm�� i�aret')
hata=pam-xq;   %hatay� hesaplatan k�s�m
 
ortalama_hata=sum(hata.^2)./length(hata);   %ortalama kuantalama hatas�

SNR_hesaplat=10*log10(var(pam)/var(hata)) %snr hesab�(Ps/P(n,q))

P=var(pam); %%P(s) g�rmek icin 
%% 100
impulseTrain(1:fs/100:end)=1;
Sampled=y.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz
t = 1;  
nx = [0:1/fs:t];
nx = nx(1:end - 1);
fc=100
duty=50
s2 = square(2*pi*100*nx,50); %darbe katar�
s2(find(s2<0)) = 0;
period_samp = length(nx)/fc;
ind = [1:period_samp:length(nx)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(nx));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end

L=8; %n=3bit 2^n=8 seviye
t=0:1/1500:1;
xmax=abs(max(pam)); %xmax=4;

adim_araligi=2*xmax/L;
partition=-(L/2-1)*adim_araligi:adim_araligi:(L/2-1)*adim_araligi; %giri� seviyesi

codebook=-((L-1)*adim_araligi/2):adim_araligi:((L-1)*adim_araligi/2); %��k�� seviyesi

[indx xq]=quantiz(pam,partition,codebook); 
%pam sinyalini giri� ve ��k��a g�re kuantalama islemi
subplot(423), stem(nx,xq);
title('100 Hz i�in 3 bit kuantalanm�� i�aret')
hata=pam-xq;   %hatay� hesaplatan k�s�m
 
ortalama_hata=sum(hata.^2)./length(hata);   %ortalama kuantalama hatas�

SNR_hesaplat=10*log10(var(pam)/var(hata)) %snr hesab�(Ps/P(n,q))

P=var(pam); %%P(s) g�rmek icin 
%% 200
impulseTrain(1:fs/250:end)=1;
Sampled=y.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz
t = 1;  
nx = [0:1/fs:t];
nx = nx(1:end - 1);
fc=250
duty=50
s2 = square(2*pi*250*nx,50); %darbe katar�
s2(find(s2<0)) = 0;
period_samp = length(nx)/fc;
ind = [1:period_samp:length(nx)];
on_samp = ceil(period_samp * 50/100);
pam = zeros(1,length(nx));
for i = 1 : length(ind)
   pam(ind(i):ind(i) + on_samp) = Sampled(ind(i));
end

L=8; %n=3bit 2^n=8 seviye
t=0:1/1500:1;
xmax=abs(max(pam));

adim_araligi=2*xmax/L; %% delta hesaplatt�k
partition=-(L/2-1)*adim_araligi:adim_araligi:(L/2-1)*adim_araligi; %giri� seviyesi

codebook=-((L-1)*adim_araligi/2):adim_araligi:((L-1)*adim_araligi/2); %��k�� seviyesi
[indx xq]=quantiz(pam,partition,codebook); 
%pam sinyalini giri� ve ��k��a g�re kuantalama islemi
subplot(424), stem(nx,xq);
title('200 Hz i�in 3 bit kuantalanm�� i�aret')
hata=pam-xq;   %hatay� hesaplatan k�s�m
ortalama_hata=sum(hata.^2)./length(hata);   %ortalama kuantalama hatas�
SNR_hesaplat=10*log10(var(pam)/var(hata)) %snr hesab�(Ps/P(n,q))

P=var(pam); %%P(s) g�rmek icin 


 