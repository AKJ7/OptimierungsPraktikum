A = zeros(4);
B = {};
n = 4;
c = {'1->2'};
c = {c, '3->4'};
d = {'1', '2'};
f = {'1', '2'};

%e = strjoin(d, '<->');
a = 1;
while (a <= n)
    b = 1;
    while (b <= n)
        if b > a
            e = string(a)+'<->'+string(b);
            B{end + 1} = e;
        end
        b = b+ 1;
    end
    a = a + 1;
end