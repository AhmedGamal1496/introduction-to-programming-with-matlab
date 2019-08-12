function amag = accelerate(F1, F2, m)
D = F1 + F2;
d = sum(D.^2);
F = sqrt(d);
amag = F / m;