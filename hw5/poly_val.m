function p = poly_val(c0, c, x)
k = size(c);
if (k == 0)
    p = c0;
elseif (isscalar(c))
    p = c0 + c*x;
else
    [c1, c2] = size(c);
    if (c1 < c2)
    p = c0 + sum(c(1:end) .* (x.^[1:c2]));
    elseif (c2 < c1)
    p1 = c(1:end);
    p = c0 + sum(p1' .* (x.^[1:c1]));
    end
end