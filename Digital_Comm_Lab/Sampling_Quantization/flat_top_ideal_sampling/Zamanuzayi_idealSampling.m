clear all
close all
clc
%% x(t)
fa=1500  %�dev pdf'inde s�ylendi
tx=0:1/fa:1 %periuyod ayarlad�m
y=cos(2*pi*10*tx)+2*cos(2*pi*30*tx) %Orjinal Sinyal
subplot(321)
plot(tx,y)
xlabel('t')   %x ekseni
ylabel('amplitude') %y ekseni
title('Sinyal') %baslik 

%% f�=20Hz 
% d�rt� katar� olu�turuyoruz.
t = 0 : 1/1500 : 1; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t)); %�Devde s�ylendi 
impulseTrain(1:fa/20:end)=1; %f�=20 olarak d�rt� 
xlabel 'Time (s)', ylabel Waveform
subplot(322)
Sampled=y.*impulseTrain; %ideal �rnekleme i�in �arp�yoruz
plot(t,Sampled)
hold on
plot(t,Sampled,'*') %noktalar koysun diye
title('�deal �rnekleme f�=20 Hz')
%% f�=60 Hz
%t = 0 : 1/1500 : 1; % 1 saniye i�in 1 kHz �rneklemne frekans�
impulseTrain=zeros(size(t));
impulseTrain(1:fa/60:end)=1;
xlabel 'Time (s)', ylabel Waveform
%%pulse train olu�tu. �imdi kendi sinyalimizi olu�turuyoruz.
y=cos(2*pi*10*t)+2*cos(2*pi*30*t); % 5 Hz frekansl�. Sn�de 5 periyot olu�turacak.
subplot(323)
Sampled2=y.*impulseTrain;
plot(t,Sampled2)
hold on
plot(t,Sampled2,'*')
title('�deal �rnekleme f�=60 Hz')
%% f�=100 Hz
impulseTrain=zeros(size(t));
impulseTrain(1:fa/100:end)=1;
xlabel 'Time (s)', ylabel Waveform
%%pulse train olu�tu. �imdi kendi sinyalimizi olu�turuyoruz.
y=cos(2*pi*10*t)+2*cos(2*pi*30*t); % 5 Hz frekansl�. Sn�de 5 periyot olu�turacak.
subplot(324)
Sampled2=y.*impulseTrain;
plot(t,Sampled2)
hold on
plot(t,Sampled2,'*')
title('�deal �rnekleme f�=100 Hz')
%% f�=200 Hz
impulseTrain=zeros(size(t));
impulseTrain(1:fa/200:end)=1;
xlabel 'Time (s)', ylabel Waveform
%%pulse train olu�tu. �imdi kendi sinyalimizi olu�turuyoruz.
y=cos(2*pi*10*t)+2*cos(2*pi*30*t); % 5 Hz frekansl�. Sn�de 5 periyot olu�turacak.
subplot(325)
Sampled2=y.*impulseTrain;
plot(t,Sampled2)
hold on
plot(t,Sampled2,'*')
title('�deal �rnekleme f�=200 Hz')
xlabel 'Time (s)', ylabel Waveform



