function S = spiral_diag_sum(n)
k = 2;
S = 0;

for i = 1:2:n
    if i == 1
        S = 1;
        continue;
    end
St = sum((i-2).^2+k:k:i.^2);
S = S + St;
k = k + 2;
end
