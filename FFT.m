%FFT
[data_meloly fs_meloly] = audioread('meloly.wav');

Y = fft(data_meloly);
plot(abs(Y));                       %Ve hinh plot(fft(Y))
figure(1);

N =length(data_meloly);                       %Do dai(so diem) FFT
transform = fft(data_meloly,N)/N;
magTransform = abs(transform);
faxis = linspace(-N/2,N/2,N);
figure(2);
plot(faxis,fftshift(magTransform)); %FFT
title('The Spectrum');
xlabel('Frequency (Hz)')
%