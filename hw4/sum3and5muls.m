function s = sum3and5muls(n)
a = [3:3:n];
b = [5:5:n];
s1 = [a b];
s2 = unique(s1);
s = sum(s2);