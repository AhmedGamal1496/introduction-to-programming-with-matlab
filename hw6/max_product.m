function [product, ind] = max_product(v, n)
product = -100;
pt = 1;

if length(v) < n
    product = 0;
    ind = -1;
else
    for i = 1:length(v)-n+1
        for j = i:n+i-1
            p = v(j);
            pt = pt * p;
        end
        if pt > product 
            product = pt;
            ind = i;
        end
                pt = 1;
    end
end
