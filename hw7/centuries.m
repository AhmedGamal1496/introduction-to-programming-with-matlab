function char = centuries(p)
if length(p) ~= 1 || round(p) ~= p
    char = '';
    return;
elseif p > 3000 || p <= 0
    char = '';
    return;
end

roman = cell(1,30);
roman =  {'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII', 'XIII', 'XIV', 'XV', 'XVI', 'XVII', 'XVIII', 'XIX', 'XX', 'XXI', 'XXII', 'XXIII', 'XXIV', 'XXV', 'XXVI', 'XXVII', 'XXVIII', 'XXIX', 'XXX'};
g = ceil(p/100);
char = roman{1, g};
end