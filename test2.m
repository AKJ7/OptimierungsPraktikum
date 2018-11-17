A = [0 1 1; 1 0 1; 1 1 0];
a = 1;
B = {};
while a <= length(A)
    b = 1;
    while (b <= length(A))
        if b > a
            B{end + 1} = [a, b];
        end
        b = b + 1; 
    end
    a = a + 1;
end

counter = 1;
zaehler = 1;
D = B;
while 1
    zaehler = 1;
    while (zaehler <= length(B))
        counter = 1;
        if (B{counter}(2) == B{zaehler}(1))
            temp = [B{counter}(1), B{zaehler}(2)];
            B(zaehler) = [];
            B(counter) = [];
            
            B{end + 1} = temp;
            disp('Found');
        end
        zaehler = zaehler + 1;
    end
    break;
end