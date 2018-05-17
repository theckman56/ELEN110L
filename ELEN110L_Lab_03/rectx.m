function out = rectx(center,width,t)
out = (0.5*sign((t-center+(0.5*width)))+1)...
     -(0.5*sign((t-center-(0.5*width)))+1);
end