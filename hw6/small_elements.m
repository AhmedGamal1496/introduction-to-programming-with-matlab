function indexes = small_elements(X)
[a, b] = size(X)
k = 1;
indexes = [];
for i = 1:b
    for j = 1:a
        if (j*i) > X(j, i)
            indexes(k, 1:2) = [j, i];
            k = k+1;
        end
    end
end