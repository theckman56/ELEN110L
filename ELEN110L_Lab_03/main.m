%% ELEN110L - Lab3: More Convolution
% Thomas Heckman, Fernando Guerra
% 4/19/18
% 
% The goal of this lab is to gain a futher understanding
% of convolution and to use our knowledge of manipulating 
% functions 


figure(1)
axis tight manual
% Set up time array
DeltaT=.01
t=[-3:DeltaT:3];
% This script convolves an input signal, inputX with an
% impulse response ImpulseRes and makes a movie of the output signal
loops = length(t);
% Initialize the structure for the movie
F(loops) = struct('cdata',[],'colormap',[]);
width = 1;

outputX = zeros(size(t)); % Initialize signal
ImpulseRes = rectx(0, width,t); % Impulse Response

for jj = 1:loops
    center = min(t)+DeltaT*jj;
    inputX = rectx(center,width,t);
     % Here you can replace the input signal with many other things like
     % rects
    indNow=find(abs(t-center)<1.1e-2);
    % Convolve the signals by doing an integral approximation
    outputX(indNow) = sum(inputX.*ImpulseRes)*DeltaT; 
    plot(t,inputX,t,ImpulseRes,t,outputX);
    F(jj) = getframe(1);
end

figure(2)
axis tight manual
DeltaT=.01
t=[-3:DeltaT:3];
loops = length(t);
F(loops) = struct('cdata',[],'colormap',[]);
width = 1;

outputX = zeros(size(t));
ImpulseRes = rectx(0, width,t);

for jj = 1:loops
    center = min(t)+DeltaT*jj;
    inputX = triangle(center,width,t);
    indNow=find(abs(t-center)<1.1e-2);
    outputX(indNow) = sum(inputX.*ImpulseRes)*DeltaT; 
    plot(t,inputX,t,ImpulseRes,t,outputX);
    F(jj) = getframe(1);
end

figure(3)
axis tight manual
DeltaT=.01
t=[-3:DeltaT:3];
loops = length(t);
F(loops) = struct('cdata',[],'colormap',[]);
width = 1;
frequency = 2.1;

outputX = zeros(size(t));
ImpulseRes = rectx(0, width,t);

for jj = 1:loops
    center = min(t)+DeltaT*jj;
    inputX = user_cosine(center,frequency,t);
    indNow=find(abs(t-center)<1.1e-2);
    outputX(indNow) = sum(inputX.*ImpulseRes)*DeltaT; 
    plot(t,inputX,t,ImpulseRes,t,outputX);
    F(jj) = getframe(1);
end

figure(4)
axis tight manual
DeltaT=.01
t=[-3:DeltaT:3];
loops = length(t);
F(loops) = struct('cdata',[],'colormap',[]);
width = 1;
frequency = 2;

outputX = zeros(size(t));
ImpulseRes = rectx(0, width,t);

for jj = 1:loops
    center = min(t)+DeltaT*jj;
    inputX = user_cosine(center,frequency,t);
    indNow=find(abs(t-center)<1.1e-2);
    outputX(indNow) = sum(inputX.*ImpulseRes)*DeltaT; 
    plot(t,inputX,t,ImpulseRes,t,outputX);
    F(jj) = getframe(1);
end
% The convolution of a cosine with a rect having a frequency of
% 2 will result in a flat line because the entire area overlapped
% by the rect and cosine functions will contain positive and negative
% regions. As the sinusoid moves through, the total positive will equal
% the total negative and lead to a net of zero, resulting in a flat line.

