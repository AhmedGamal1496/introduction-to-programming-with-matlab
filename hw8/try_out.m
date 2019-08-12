function output = try_out(a, b)
s = 0;
a = fliplr(a); b = fliplr(b);
if length(a) < length(b) 
    for i = 1:length(a)
        s = str2num(a(i)) + str2num(b(i)) + floor(s/10);
        if s < 10
            output(i) = num2str(s);
        else
            s1 = s - 10;
            output(i) = num2str(s1);
        end
    end
    for j = (length(a) +1) : length(b)
        s = str2num(b(j)) + floor(s/10); 
       if s < 10
            output(j) = num2str(s);
        else
            s1 = s - 10;
            output(j) = num2str(s1);
        end
    end
end
output = fliplr(output);
end