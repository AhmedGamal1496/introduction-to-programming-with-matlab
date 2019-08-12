function [E, k] = approximate_e(delta)
k = 0;
E = 0;

while (exp(1) - E) > delta
    if k == 0;
        E = 1;
        k = k +1;
        continue;
    end
    k = k + 1;
    p = [1:k - 1];
    Et = 1/prod(p);
    E = E + Et;
end
k = p(end);
    
