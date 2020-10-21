function [val_bi,niter_bi] = bisect(argfunc, xa, xb)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

a = xa;
b = xb;
y = [];
count = 0; 

while abs(a-b) > 1E-6
    m = (a + b)/2;
    out = argfunc(m);
    
    if out > 0
        a = m;
    else
        b = m;
    end 
    
    count = count + 1;
    y(count) = m;
    
end 
    
val_bi = y;
niter_bi = count;
end

