% Spectrogram
[data_meloly fs_meloly] = audioread('meloly.wav');

win = 128;                          %Do dai
hop = win/2;                        %So mau tin hieu chong len nhau

%Tao hinh ve
figure(3);
nfft = win;                         %Chieu rong cua pho
spectrogram(data_meloly,win,hop,nfft,fs,'yaxis');
yt = get(gca,'YTick');  
set(gca,'YTickLabel', sprintf('%.0f|',yt))
title('Spectrogram');