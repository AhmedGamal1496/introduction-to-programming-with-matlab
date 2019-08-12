function result = smallest_multiple(n)
bin = uint64([]);
g = uint64([]);
n = uint64(n);

result = uint64(1);

for i = 2:n
    i = uint64(i);
    a = factor(i);
    bin = g;
    for j = 1:length(a)
        j = uint64(j);
        b = uint64(find(a(j)==bin));
        
        if b
            bin(b(1)) = [];
        else
            bin(length(bin)+1) = a(j);
            g(length(g)+1) = a(j);
            result = result * a(j);
        end
        
    end
end
if result == intmax('uint64')
    result = unit64(0);
    return;
end
end
        
        
    