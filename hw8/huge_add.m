function output = huge_add(a, b)
if  ~ischar(a) || ~ischar(b)
        output = -1;
        return;
end

for i = 1:length(a)
    if isempty(str2num(a(i)))
        output = -1;
        return;
    end
end

for j = 1:length(b)
        if isempty(str2num(b(j)))
        output = -1;
        return;
    end
end

s = 0;
a = fliplr(a); b = fliplr(b);
if length(a) <= length(b)
    x = a; y = b;
    output = zeros(1, length(b));
else
    x=b; y=a;
    output = zeros(1, length(a));
end
    for i = 1:length(x)
        s = str2num(x(i)) + str2num(y(i)) + floor(s/10);
        if s < 10
            output(i) = num2str(s);
        else
            s1 = s - 10;
            output(i) = num2str(s1);
        end
    end
    
    for j = (length(x) +1) : length(y)
        s = str2num(y(j)) + floor(s/10); 
       if s < 10
            output(j) = num2str(s);
        else
            s1 = s - 10;
            output(j) = num2str(s1);
        end
    end
    if s < 10
        output = fliplr(output);
    else
        output(j+1) = floor(s/10);
        output = fliplr(output);
end