function [sol] = vanderPol(t, y, epsilon)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
y1 = zeros(1,length(t));
y1(1) = y(1);
y2 = zeros(1,length(t));
y2(1) = y(2);
y3 = zeros(1,length(t));

for k = 1:length(t)-1
    y3(k+1) = epsilon*(1-y1(k)^2)*y2(k) - y1(k);
    y2(k+1) = (y3(k) + y1(k))*(1/(epsilon*(1-y1(k)^2)));
    y1(k+1) = -1*(y3(k) + epsilon*(y1(k)^2 - 1)*y2(k));
end 

sol = [y1;y2];
end

