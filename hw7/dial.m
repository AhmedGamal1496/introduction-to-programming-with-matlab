function output = dial(char)
 p = ['ABC', 'DEF', 'GHI', 'JKL', 'MNO', 'PQRS', 'TUV', 'WXYZ'];
 n = length(char);
 output = zeros(1,length(char));
 for i = 1:n
  ascii = double(char(i));
   if ascii < 48 || (ascii > 57 && ascii < 65) || ascii > 90
       output = -1;
   else
     if str2num(char(i))
         output(1,i) = str2num(char(i));
         continue;
     end
     if char(i) == '0'
         output(1,i) = str2num(char(i));
      continue;
     end
     
     num = strfind(p, char(i));
     if num >= 1 &&  num <= 3
         output(1, i) = 2;
     elseif num >= 4 &&  num <= 6
        output(1, i) = 3;
     elseif num >= 7 &&  num <= 9
         output(1, i) = 4;
      elseif num >= 10 &&  num <= 12
          output(1, i) = 5;
       elseif num >= 13 &&  num <= 15
           output(1, i) = 6;
       elseif num >= 16 &&  num <= 19
           output(1, i) = 7;
      elseif num >= 20 &&  num <= 22
          output(1, i) = 8;
      elseif num >= 23 &&  num <= 26
          output(1, i) = 9;
     end   
   end
 end
 output = sprintf('%d', output);
 output = str2num(output);
 output = uint64(output);
 end

         