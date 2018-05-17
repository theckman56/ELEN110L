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
frequency = 1.25;
% 
outputX = zeros(size(t)); % Initialize signal
ImpulseRes = rectx(0,width,t); % Impulse Response

for jj = 1:loops
    center = min(t)+DeltaT*jj;
    inputX = user_cosine(center,frequency,t);
     % Here you can replace the input signal with many other things like
     % rects
    indNow=find(abs(t-center)<1.1e-2);
    % Convolve the signals by doing an integral approximation
    outputX(indNow) = sum(inputX.*ImpulseRes)*DeltaT; 
    plot(t,inputX,t,ImpulseRes,t,outputX);
    F(jj) = getframe(1);
end
% It's a good idea to clear all and close all after you finish one movie and want to start another.
% if you want to save the movie, you can save F and then later movie(F) to see 
% it again
