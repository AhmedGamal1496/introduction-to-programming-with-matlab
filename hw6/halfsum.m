function sumt = halfsum(A)
sumt = 0;
[a, b] = size(A);
for i = 0:a
     if 1+i > b || a-i < 1
        break;
    end
    sum1 = sum(A(a-i, 1+i:end));
    i = i + 1;
    sumt = sumt + sum1;
end
