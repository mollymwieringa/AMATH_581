function [val] = forwardeuler(argfunc, tspan, y0, delt)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

yn=zeros(1, length(tspan));
yn(1) = y0;

for k = 1:length(tspan)-1
    yn(k+1)  = yn(k) + delt*argfunc(tspan(k),yn(k));

end 
val = yn;
end

