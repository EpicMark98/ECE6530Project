%% Sampling and Aliasing: Lab S-8: 2.3 — Decibel Spectrogram of Your Voice

%% 2.3.1)
load('48000_bicycle_built_for_two.mat', 'data');
fSamp = 48000;
vv = data(370000:end, 1)'; % gets the left channel, second half of audio
tSect = 0.025;
lSect = round(tSect*fSamp); % must be an integer
soundsc(vv, fSamp);
figure
plotspecDB(vv + 1j*1e-12, fSamp, lSect, 80)
colorbar
title("I'm half crazy all for the love of you")
%%%
% After some testing, Tsect of 25ms gave the cleanest vowel lines.
% Multiplying this by the sampling frequency gives the Lsect, which is
% 1200.
%
% <<voice_spectrogram.png>>
%

%% 2.3.2)
% The short 'a' vowel has a fundamental frequency of about 200Hz. This
% corresponds to a fundamental period of 5ms.

%% 2.3.3)
% N/A

%% 2.3.4)
% 