function b = gray2bin(g)
    b = zeros(1,numel(g));
    b(1) = g(1);
    for i = 2 : length(g);
        x = xor(b(i-1), g(i));
        b(i) = x;
    end
end