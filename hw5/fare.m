function d = fare(m, a)
r = round(m);
if (r <= 1)
    d1 = 2;
elseif (r > 1 && r <= 10)
    d1 = 2 + (r-1) * 0.25;
elseif (r > 10)
    d1 = 2 + (r-10) * 0.1 + 9 * 0.25;
end

if (a <= 18 || a >= 60)
    d = d1 - d1 * 0.2;
 else
     d = d1;
 end