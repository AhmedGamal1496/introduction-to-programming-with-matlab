function S = simple_stats(N)
x = mean(N,2);
y = median(N,2);
z = min(N,[],2);
f = max(N,[],2);
S = [x y z f];
