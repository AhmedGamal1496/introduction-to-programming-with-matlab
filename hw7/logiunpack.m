function A = logiunpack(lp)
g = length(lp);
A = zeros(g,g);
for i = 1:length(lp)
    if isempty(lp{1,i})
        continue;
    else
        A(i, lp{1, i}) = 1;
    end
end
A = logical(A);
end