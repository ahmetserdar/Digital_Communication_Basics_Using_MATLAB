clear all;
close all;
fs=10000; %tabanbannt mod�le i�aretin �rnekleme frekans�
fd=100; %mod. �ncesi ikili i�aretin �rnekleme frekans�
b=[0 0 0 0 0 0 1 1 0 0 0 0 0 0]; %binary bit dizini
bnrz=tekkutuplu(b,fd,fs,'nrz'); %nrz i�areti
subplot(421)
plot(bnrz,'b');
stairs(bnrz,'LineWidth',2); %ikili bilgi dizinini �izdir
title('Zamanda kare darbe');
axis([0 1000 0 1.5]);
xlabel('t');
ylabel('amplitude');
fx=fft(bnrz,13000);     %frekans spektrumu hesapla
 subplot(422)                         %130. �rnek fb=1/tb oran�na kar��l�k gelir.
plot(abs(fftshift(fx)));   %genlik yan�t�
title('Darbe i�aretinin genlik spektrumu');
xlabel('frekans Hz');
ylabel('amplitude');


fr=fx;    %al�nan� iletilene esitledik
fr(130:13000-130)=0; %kanal�n bants�n�rl� olmas�n� al�nan spektruma yans�t
subplot(423)
plot(abs(fftshift(fr)),'b');
title('Bant s�n�rl� kanal�n sonunda al�nan i�aretin genlik spektrumu')
xlabel('frekans Hz');
ylabel('amplitude');
a=real(ifft(fr,13000)); %al�nan isareti zaman uzay�nda olustur
a=a(1:length(bnrz)); %al�nan i�aretin bilgi k�sm�n� kes 
subplot(424)
plot(a,'LineWidth',2);
title('Bant s�n�rl� kanal�n etkisiyle al�c�da al�nan i�aret bi�imi ')
axis([0 1000 0 1.5]);
xlabel('t');
ylabel('amplitude')
