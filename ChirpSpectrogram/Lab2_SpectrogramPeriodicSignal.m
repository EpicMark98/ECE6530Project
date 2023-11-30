% Spectogram of Periodic Signal
%% 2.2.1 Spectrogram of Periodic Triangle Wave
%DC Level of zero and peak amplitude of 0.5
fSamp = 10000;  % Sampling Freq 10kHz
T = 0.01;       % Period of 10 msec
tStart = 0;
tStop = 3;      
Amp = 200;      % Chosen to get a peak amplitude of 0.5

tt=0:(1/fSamp):tStop;
qq=rem(tt,T);               
xx=Amp*(abs(qq-(0.5*T))-0.25*T);    %Triangle Waveform

figure(1)
plot(tt,xx)
xlim([0 0.05])          % Limiting to five periods
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangle Waveform (5 periods)')

Tsect = T*5;            % Tsect of five periods 
Lsect = Tsect*fSamp;    % Long section duration =  section duration * samp freq

figure(2)
plotspec(xx,fSamp,Lsect),colorbar,grid on
title('Time Frequency Spectogram')
xlabel('Time (sec)')
ylabel('Frequency (Hz)')
%soundsc( xx, fSamp ); %-- uncomment to hear the sound

% 2.2.1(d) Harmonic Line Spectrum 
% Harmonic Line Freq : 100Hz, 300Hz, 500Hz, 700Hz, 900Hz, 1100Hz, 1300Hz, 1500Hz 

% 2.2.1(e) Determine the fundamental frequency for the harmonic lines.
fFund = 1/T;    % Fundamental freq == 1/T == 100 Hz (First Harmonic) 
 
% 2.2.1(f) Record the values for the amplitudes and compute the ratio.
% 1st Harmonic Line, a1
a1 = -2/(pi^2);
% 3rd Harmonic Line, a3 
a3 = -2/((pi^2)*(3^2));
% Ratio a3/a1
ratio = a3/a1;