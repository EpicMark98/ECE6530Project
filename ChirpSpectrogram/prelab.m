%% Chirp
fSamp = 8000; % number of time samples per second
dt = 1/fSamp;
tStart = 0;
tStop = 1.5;
tt = tStart:dt:tStop;
mu = 600;
fzero = 400;
phi = 2*pi*rand; % random phase
psi = 2*pi*mu*tt.^2 + 2*pi*fzero*tt + phi;
cc = real(7.7*exp(1j*psi));
%soundsc(cc, fSamp); % uncomment to hear the sound
%plotspec(cc + 1j*1e-12, fSamp, 256) % with negative frequencies
%colorbar
%grid on

%% Triangle
fs = 1000;
tStop = 1;
T = 0.2;
Amp = 0.5;

tt = 0:(1/fs):tStop;
qq = rem(tt, T);
xx = Amp*(4/T)*(abs(qq-(0.5*T))-0.25*T);

figure
hold on
plot(tt, xx, 'k-')
axis([0, 2, -1, 1])
ylabel('x(t_n)')
xlabel('t_n')
title('Chirp Signal')
hold off

%% Decibels
numbers = [0.1, 1, 2, 5, 10, 100];
decibelized = 20*log10(numbers);
decibels = [-6, -60, -80];
decimalized = 10.^(decibels./20);

%% 
kk = [1, 3, 5, 15];
a_k = [0, 0, 0, 0];
for k = 1:4
    if (mod(kk(k), 2) == 1)
        a_k(k) = (-2)/((pi^2)*(kk(k)^2));
    end
end
disp(a_k(2)/a_k(1))
disp(a_k(3)/a_k(1))
disp(a_k(4)/a_k(1))