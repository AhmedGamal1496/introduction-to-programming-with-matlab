function g = zero_stat(z)
x = find(z==0);
[a, b] = size(x);
c = a*b;
y = find(z==1);
[d, f] = size(y);
h = d*f;
g = (c/(c+h)) * 100;