
A = [0 1 0 1; 1 0 1 0; 0 1 0 1; 1 0 1 0];

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


disp(zusammenhaengend(B));

function output = zusammenhaengend(kante)

    

    output = 1;


end