function [sine, scalar] = sindeg(deg)
deg = deg * (pi/180);
sine = sin(deg);
[a, b] = size(sine);
sine1 = sine(:);
s = sum(sine1);
scalar = s / (a*b);