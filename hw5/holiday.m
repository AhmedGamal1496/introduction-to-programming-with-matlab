function logical = holiday(month, day)
if (month == 1 && day == 1)
    logical = true;
elseif (month == 7 && day == 4)
    logical = true;
elseif (month == 12 && day == 25)
    logical = true;
elseif (month == 12 && day == 31)
    logical = true;
else
    logical = false;
end