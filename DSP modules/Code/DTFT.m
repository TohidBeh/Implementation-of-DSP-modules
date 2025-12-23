function Res = DTFT(x_n, n1, n2, omega)
    len = length(omega);  
    Ans = zeros(1,len);
    intv = (n1:n2);
    for j = 1 : len
        Ans(j) = sum(x_n .* exp(-1i * intv * omega(j)));
    end
    Res = Ans;
end