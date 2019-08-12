function lp = logipack(A)
[p, d] = size(A);
lp = cell(1, p);
k = 1;
for i = 1:p
            if all(~A(i, 1:end))
            lp{i} = [];
            end
     
    for j = 1:p
          if A(i, j)
              lp{i}(1,k) = j;
              k = k + 1;
        end
    end
    k = 1;
end
end