function mondays = day_counter(year)
mondays = 0;
month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

s1 = (year - 1776) * 365;
s2 = floor((year - 1776) / 4);
if year <= 1800
    s2 = s2;
elseif year > 1800 && year <= 1900
    s2 = s2 - 1;
elseif year > 1900
    s2 = s2 - 2;
end
s3 = s1 +  1 + s2;
s4 = s3 - floor(s3 / 7) * 7;

if floor(year / 4) == year / 4
    s4 = s4 - 1;
end
s = 2 + s4;
if s == 2;
    mondays = mondays + 1;
end

if year == 1800 || year == 1900
    month(2) = 28;
elseif floor(year / 4) == year / 4
        month(2) = 29;
end

for i = 1:11
    p = month(i) - floor(month(i) / 7) * 7;
    if (s + p) <= 7
        s = s + p;
    else
        s = (s+p) - floor((s + p) / 7) * 7;
    end
    
    if s == 2;
    mondays = mondays + 1;
    end
end
    