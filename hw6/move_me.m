function w = move_me(v, a)
p = length(v);

    if nargin == 1
        w1 = v(v ~= 0);
        w2 = length(v) - length(w1);
        w = [w1 zeros(1,w2)];
    elseif nargin == 2
        w1 = v(v ~= a);
        w2 = length(v) - length(w1);
        w = [w1 a*ones(1,w2)];
end