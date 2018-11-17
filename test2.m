A = [0 0 1 1 0; 0 0 0 1 1; 1 0 0 1 0; 1 0 1 0 0; 0 1 0 0 0];
%A = [0 1 1; 1 0 1; 1 1 0];
%A = [0 1 0 1; 1 0 1 0; 0 1 0 1; 1 0 1 0];
a = 1;
B = {};
while a <= length(A)
    b = 1;
    while (b <= length(A))
        if b > a && A(a, b) ~= 0
            B{end + 1} = [a, b];
        end
        b = b + 1; 
    end
    a = a + 1;
end

C = B;

counter = 1;
while 1
    zaehler = 1;
    %disp([C{counter}, counter]);
    while zaehler < length(C) && counter <= length(C)
       zaehler = zaehler + 1;
      if C{counter}(1) == C{zaehler}(2)
          C{counter} = [C{zaehler}(1), C{counter}(2)];
          C(zaehler) = [];
          disp('First if');
          break;
      elseif C{counter}(2) == C{zaehler}(1)
          C{counter} = [C{counter}(1), C{zaehler}(2)];
          C(zaehler) = [];
          disp('Second if');
          break;
      elseif C{counter}(1) == C{zaehler}(1)
          C{counter} = [C{counter}(2), C{zaehler}(2)];
          disp([C{counter}, counter]);
          C(zaehler) = [];
          disp('Third if');
          break;
      elseif C{counter}(2) == C{zaehler}(2)
          C{counter} = [C{counter}(1), C{zaehler}(1)];
          C(zaehler) = [];
          disp('Fourth if');
          break;
      else
          counter = counter + 1;
      end
   end
   if counter >= length(C)
       break;
   end
   if (zaehler == length(C))
       %counter = counter + 1;
   end
end
if (C{1}(1) == C{1}(2))
    disp('Kreis gefunden!');
else
    disp('Kein Kreis gefunden');
end