function D = day_diff(month1, day1, month2, day2)
m = [31 28 31 30 31 30 31 31 30 31 30 31];

if (isscalar(month1) == 0 || isscalar(month2) == 0  || isscalar(day1) == 0  || isscalar(day2) == 0 )
    D = -1;
    return
elseif (floor(month1) ~= month1 || floor(month2) ~= month2 || floor(day1) ~= day1 || floor(day2) ~= day2)
    D = -1;
    return
elseif (month1 > 12 || month1 < 1 || month2 > 12 || month2 < 1 || day1 > m(month1) || day2 > m(month2))
    D = -1;
    return
elseif (sign(month1) == -1 || sign(month2) == -1 || sign(day1) == -1 || sign(day2) == -1)
    D = -1;
    return
 
elseif (abs(month1 - month2) == 1)
    if(month1 < month2)
    D = m(month1) - day1 + day2;
    elseif(month1 > month2)
    D = m(month2) - day2 + day1;
    end
elseif ((month1 - month2) == 0)
    D = abs(day1-day2);
else
    if (month2 >= month1)
    d1 = sum(m(month1+1:month2-1));
    d2 = m(month1) - day1;
    d = d1 + d2;
    D = d + day2;
    else
    d1 = sum(m(month2+1:month1-1));
    d2 = m(month2) - day2;
    d = d1 + d2;
    D = d + day1;
    end
end
    