function smallest = integerize(A)
A1 = A(:);
p1 = max(A1);
p2 = min(A1);
if p2 < -p1
    p = p2;
else
    p = p1;
end

if p2 < intmin('int64') || p1 > intmax('int64')
    smallest = 'NONE';
elseif any(p == (intmin('int8'):intmax('int8'))) 
    smallest = 'int8';
elseif any(p == (intmin('int16'):intmax('int16'))) 
    smallest = 'int16';
elseif p >= intmin('int32') && p <= intmax('int32') 
    smallest = 'int32';
elseif p >= intmin('int64') && p <= intmax('int64') 
    smallest = 'int64';
end