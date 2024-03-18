function result = aes_mul(dec1,dec2)
    x=de2bi(dec1);
    y=de2bi(dec2);
    
    a = x;
    b = y;
    
    a1 = a;
    aes = [0 0 0 1 1 0 1 1];
    matrix = zeros(7, 8);
    
    for i = 1:7
        if (a(1) ~= 1)
            a = [a(2:8) zeros(1, 1)];
        else
            a = [a(2:8) zeros(1, 1)];
            a = bitxor(a, aes);
        end
        matrix(i, :) = a;
    end
    
    matrix = flip(matrix);
    mul = zeros(1, 8);
    
    for i = 1:8
        if (b(i) == 1)
            if i == 8
                mul = bitxor(mul, a1);
            else
                mul = bitxor(mul, matrix(i, :));
            end
        end
    end
    result = mul;

end