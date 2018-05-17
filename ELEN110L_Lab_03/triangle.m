function out = triangle(center,width,t)
n = nnz(rectx(center,width,t));
y = (1/n)*conv(rectx(center,width,t),rectx(center,width,t),'same');
out = y;
end