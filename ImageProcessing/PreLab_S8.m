% Lab S-8 Spectograms: Harmonic Lines & Chirp Aliasing

%% Pre Lab 1.2.1 Synthesis of Chirp Signals

fSamp = 8000; %-Number of time samples per second
dt = 1/fSamp;
tStart = 0;
tStop = 1.5;
tt = tStart:dt:tStop;
mu = 600;
fzero = 400;
phi = 2*pi*rand; %-- random phase 
psi=2*pi*mu.*(tt.^2)+2*pi*fzero.*tt+phi;    %Eq (1)
cc = real( 7.7*exp(j*psi) );
soundsc( cc, fSamp ); %-- uncomment to hear the sound
plotspec( cc+j*1e-12, fSamp, 256 ), colorbar, grid on %-- with negative frequencies

%% 1.3 Triangle Wave
fs = 1000;
tStop = 1;
T = 0.2;
Amp = 10;

tt=0:(1/fs):tStop;  
qq=rem(tt,T);
xx=Amp*(abs(qq-(0.5*T))-0.25*T);

plot(tt,xx)

%% 1.4 Decibels

dB_1 = 20*log(0.1)
dB_2 = 20*log(1)
dB_3 = 20*log(2)
dB_4 = 20*log(5)
dB_5 = 20*log(10)
dB_6 = 20*log(100)

dbtoNum1 = 10^(-6/20)
dbtoNum2 = 10^(-60/20)
dbtoNum3 = 10^(-80/20)

%% Fourier Series of a Triangle Wave

%% 2.1 Spectogram for a Chirp that Aliases 

fSamp = 4000;       %-Number of time samples per second
dt = 1/fSamp;       % Time step 
tStart = 0;         % Start Time 
tStop = 4;          % End Time
fzero = 1000;       % Starting freq.
fmax = 11000;       % Max Frequency  
mu = (fmax-fzero) / ((tStop-tStart)*2);     % Eq(3) slope = 2*mu = (f2-f1/t2-t1) 
tt = tStart:dt:tStop;                       %Time vector
Lsect = 100;        % User choice (Justify)

phi = 2*pi*rand;    %-- random phase or total freq deviation??
psi= 2*pi*mu.*(tt.^2) + 2*pi*fzero.*tt + phi;   % Eq(1)
cc = real( 7.7*exp(j*psi) );                    % 7.7??
% soundsc( cc, fSamp ); %-- uncomment to hear the sound
plotspec( cc, fSamp, Lsect ), colorbar, grid on 
title('Time Freqncy Spectogram, Sampling at 4000Hz')

%2.1(a) Once the instantaneous frequency goes past the half sampling rate
%aliasing begins to occur. 

%2.1(b) Section length chosen was 100 it provided the smoothest plot and
%the section duration is section length/sampling freq = 0.025 

%2.1(c) It does not chirp up to 11,000 Hz due to aliasing, once fs/2 is
%reached it begins aliasing %%%%%%%%%(Find other effect)
