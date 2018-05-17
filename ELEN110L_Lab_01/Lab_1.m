%% ELEN110L - Lab1: MATLAB Review
% Thomas Heckman, Fernando Guerra
% 4/5/18
% 
% The goal of this lab is to refresh our MATLAB basics
% and to practice our introductory understanding of signal
% transformations

x = [-100  0  1  2  3  3  4  4  5  100]; 
y = [0  0  1  0  0  1  1  0  0  0]; 

figure(1)

%The original signal
subplot(2,3,1);         %Allocates plot space in subplot
plot(x,y);              %plots
grid;                   %turns on grid
axis([-5 15 -1 3]);     %sets axes
title('Problem 1');     %annotates plot

%The signal flipped across the y-axis
subplot(2,3,2);
plot(-x,y);
grid;
axis([-5 15 -1 3]);
title('Problem 2');

%The signal flipped across the x-axis
subplot(2,3,3);
plot(x,-y);
grid;
axis([-5 15 -1 3]);
title('Problem 3');

%Translate the signal up by 2, and to the left by 3
subplot(2,3,4);
plot(x-3,y+2);
grid;
axis([-5 15 -1 3]);
title('Problem 4');

%Scale the signal up horizontally by a factor of 3 
%and scale it down by vertically by a factor of 2
subplot(2,3,5);
plot(3*x,0.5*y);
grid;
axis([-5 15 -1 3]);
title('Problem 5');

%Translate signal down 1 and left 2, and scale it 
%down horizontally by a factor of 2
subplot(2,3,6);
plot(0.5*(x-2),y-1);
grid;
axis([-5 15 -1 3]);
title('Problem 6');




