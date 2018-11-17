

testing();

function [] = testing()
counter = 1;
while counter < 10
    disp(counter);
    if counter == 4
        return
    end
    counter = counter + 1;
end

end
