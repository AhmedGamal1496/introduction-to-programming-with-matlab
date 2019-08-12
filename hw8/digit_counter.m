function num = digit_counter(filename)
fid = fopen(filename,'rt');
if fid < 0
fprintf('error opening file\n');
num = -1;
return;
end

num = 0;
oneline = fileread(filename);

    for i = 1:length(oneline)
        b = str2num(oneline(i));
        if isempty(b) || ~isreal(b)
            continue;
        else
            num = num + 1;
        end
    end
end