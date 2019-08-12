function m = reverse_diag(n)
a = zeros(n,n);
b = a(:);
b(n:n-1:end-n+1, 1) = 1;
m = reshape(b,n,n);