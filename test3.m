%A = [0 0 1 1 0; 0 0 0 1 1; 1 0 0 1 0; 1 0 1 0 0; 0 1 0 0 0];
%A = [0 1 1; 1 0 1; 1 1 0];
%A = [0 1 0 1; 1 0 1 0; 0 1 0 1; 1 0 1 0];
%A = [0 1 0; 1 0 0; 0 0 0];
%A = [0 1 0 0; 1 0 1 0; 0 1 0 1; 0 0 1 0];
%A = [0 1 1 1 1 0 0; 1 0 1 0 0 1 0; 1 1 0 0 1 1 0; 1 0 0 0 1 0 1; 1 0 1 1 0 1 1; 0 1 1 0 1 0 1; 0 0 0 1 1 1 0];
%A = [0 1 0 0 1; 1 0 1 0 0; 0 1 0 1 0; 0 0 1 0 1; 1 0 0 1 0];
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

D = kreisCheck({[5 7]  [5 6]  [1 2]  [1 4]  [1 3]  [3 5] [4 7]});
if (D{1}(1) == D{1}(2))
    disp(1);
else
    disp(0);
end

function output = kreisCheck(kanten)
    current = 1;
    counter = 1;
    
    while counter <= length(kanten)
        if counter ~= current
            if kanten{current}(2) == kanten{counter}(1)
                kanten{current} = [kanten{current}(1), kanten{counter}(2)];
                kanten(counter) = [];
                if (length(kanten) == 1)
                    output = kanten;
                    return;
                else
                    kanten = kreisCheck(kanten);
                end
            elseif kanten{current}(2) == kanten{counter}(2)
                kanten{current} = [kanten{current}(1), kanten{counter}(1)];
                kanten(counter) = [];
                if (length(kanten) == 1)
                    output = kanten;
                    return;
                else
                    kanten = kreisCheck(kanten);
                end
            end
        end
        counter = counter + 1;
    end
    
    zaehler = 1;
    
    while zaehler <= length(kanten)
        if (kanten{zaehler}(1) == kanten{zaehler}(2))
            output = {[0, 0]};
            return;
        end
        zaehler = zaehler + 1;
    end
   
    output = kanten;
end