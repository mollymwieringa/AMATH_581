function [val,niter] = newton_raphson(argfunc, argfunc_der,x0)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
xn = [];
xn(1) = x0;
count = 1;
while abs(argfunc(xn(count))/argfunc_der(xn(count))) > 1E-6
    xn(count + 1)  = xn(count) - argfunc(xn(count))/argfunc_der(xn(count));
    count = count + 1;
    
end

val = xn;
niter = count-1;
end

