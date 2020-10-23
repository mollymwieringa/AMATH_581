function dydt = fitzhugh(t,y,a,b,c,d,I)
% voltage variable
v1 = y(1);
v2 = y(2);
% refractory variable
w1 = y(3);
w2 = y(4);

d12= d(1);
d21= d(2);
% define the 2d system
dv1 = -v1^3 + (1+a(1))*v1^2 -a(1)*v1 -w1 + I + d12*v2;
dw1 = b*v1-c*w1;

dv2 = -v2^3 + (1+a(2))*v2^2 -a(2)*v2 -w2 + I + d21*v1;
dw2 = b*v2-c*w2;

dydt = [dv1; dv2; dw1;dw2];
end 
