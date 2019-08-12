function orms = odd_rms(nn)
x = [1:2:10000];
y = x(1, 1:nn);
z = y.^2;
v = sum(z) / nn;
orms = sqrt(v);