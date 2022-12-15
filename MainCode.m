%% This script helps you to extract features from 
clc;
clear all;
close all;
warning off;
K=5;
N=14;
%%
%%
%cd('1');
AudioFile = dir('*.wav');
for k = 1:length(AudioFile)
filename = AudioFile(k).name;
[y1,Fs] = audioread(filename);
y1= y1(1:Fs*4);
spectrogram(y1, 600, [], [],Fs, 'yaxis');


colormap(gray)
set(gca,'XTick',[]); % Remove the ticks in the x axis!
set(gca,'YTick',[]); % Remove the ticks in the y axis
set(gca,'Position',[0 0 1 1]); % Make the axes occupy the hole figure
axis xy;
 
 saveas(gcf,sprintf('Assam%d.jpg',k))
 img=imread(sprintf('Assam%d.jpg',k));
 img=rgb2gray(img);
 clf;
 close all;
% 
Assam_CLBP(k,:) = FeatCompNew(img);
%Tamil_Gabor(k,:)=ILD_Gabor(img,K,N);
%Tamil_HoG=[EstraiHoG(single(img),[],5,6)];
Assam_Wavelet(k,:) = Wav_ILD(img);
%Features(k,:) = getFeatu res(I);
Assam_LBPHF(k,:)=LBP_EHF(img);
%Tamil_MFS(k,:)=LapMFS(img);
%Multi-fractal Spectrum feature to represent image
end
cd('C:\Users\Dell\Downloads\LID_CODE\LID_CODE\LID');
%clear AudioFile filename k K y1 Fs img N
%save Assam_Feat.mat