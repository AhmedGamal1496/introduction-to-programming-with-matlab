function l = eligible(v, q)
avr = (v+q) / 2;
if (avr >= 92 && v > 88 && q > 88)
    l = true;
else
    l = false;
end