function p = peri_sum(A)
x = [A(1, 1:end) A(end, 1:end)];
x1 = sum(x);
y = [A(2:end-1, 1) A(2:end-1, end)];
y1 = y(:);
y2 = sum(y1);
p = x1 + y2;