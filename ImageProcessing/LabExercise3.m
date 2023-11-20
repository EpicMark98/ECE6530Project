%% Lab Exercise 3
% This exercise is about downsampling and reconstruction

% Part a)
load lighthouse;
show_img(xx);
xxDownsampled = xx(1:2:end, 1:2:end);
show_img(xxDownsampled);
% The fence shows the aliasing effects most dramatically

% Part b)
% The fence posts act as a high freqency component.
% When we perform the downsampling, those high freqencies alias
% to a much lower frequency, causing the distortion. To avoid aliasing,
% we must either increase our sampling frequency to at least twice
% the highest frequency, or we must send the image through a low-pass
% filter so that condition is still satisfied.

% NOTE: I was hoping that the following code would show some aliasing but
% you can't really see anything.
row = xx(200,:);
rowDownsampled = xxDownsampled(100,:);
rowFreq = fftshift(fft(row));
rowDownFreq = fftshift(fft(rowDownsampled));
figure;
subplot(2,1,1);
plot(-pi:(2*pi/425):pi,abs(rowFreq));
title('Frequency Response of Original Image');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');
subplot(2,1,2);
plot(-pi:(2*pi/212):pi,abs(rowDownFreq));
title('Frequency Response of Downsampled Image');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');