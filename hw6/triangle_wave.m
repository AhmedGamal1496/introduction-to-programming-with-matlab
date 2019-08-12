function sums = triangle_wave(n)
sums = 0;

for k = 0:n
    p = 4*pi;
    t = linspace(0,p,1001);
    s = ((-1).^k * sin((2*k +1) * t)) / (2*k+1).^2;
    sums = sums + s;
end