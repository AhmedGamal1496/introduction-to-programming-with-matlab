function average = exp_average(n,m)
persistent out;
persistent b;

if (nargin == 2)
    in = n;
    out = in;
    b = m;
    out = b * in + (1-b) * out;
    average = out;
elseif(nargin == 1)
    if (isempty(b))
        b = 0.1;
        if(isempty(out))
            in = n;
            out = in;
            average = out;
        else
            in = n;
            out = in * b + (1-b) * out;
            average = out;
        end
    else
        if(isempty(out))
            in = n;
            out = in;
            average = out;
        else
            in = n;
            out = in * b + (1-b) * out;
            average = out;
        end
    end
end
    