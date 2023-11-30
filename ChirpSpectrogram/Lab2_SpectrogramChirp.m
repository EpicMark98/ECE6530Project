% 2 Lab Exercise
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
xlabel('Time (sec)')
ylabel('Frequency (Hz)')

%2.1(a) Once the instantaneous frequency goes past the half sampling rate
%aliasing begins to occur. 

%2.1(b) Section length chosen was 100 it provided the smoothest plot and
%the section duration is section length/sampling freq = 0.025 

%2.1(c) It does not chirp up to 11,000 Hz due to aliasing, once fs/2 is
%reached it begins aliasing %%%%%%%%%(Find other effect)
