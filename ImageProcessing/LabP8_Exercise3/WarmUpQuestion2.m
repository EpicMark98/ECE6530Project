%% Warm Up Question 2
% This file runs through the warm up exercise

%% 2.1 a) Synthesize test image with identical columns
xpix = ones(256,1)*cos(2*pi*(0:255)/16);
show_img(xpix);

%% 2.1 b) It appears that a value of 1 represents white and 0 represents black

%% 2.1 c) Create test image with 5 horizontal bands
ypix = ((cos(2*pi*(0:399)/80))')*ones(1,400);
show_img(ypix);

%% 2.2 skipping this part because it is printing several images to a PDF

%% 2.3 Downsampling
load lighthouse;
show_img(xx);
xxDownsampled = xx(1:2:end, 1:2:end);
whos; % Size is 326x426, Downsampled is 163x213
show_img(xxDownsampled);

% The fence is pretty messed up by the aliasing
