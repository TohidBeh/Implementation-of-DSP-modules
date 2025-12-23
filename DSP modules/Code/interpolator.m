function Res = interpolator(x, L, mode)
len_x = length(x);
Res = zeros(1, L * len_x);
    if (mode == 1)
            len_res = length(Res);
            Res(1:L:len_res) = x;
            Res = L .* Res;

    elseif (mode == 2)
            for j = 1:len_x
                Res((j-1)*L+1 : j*L) = (1-abs(j-(1:L))/L).*x(j);
            end
            
    elseif (mode == 3)
            L1 = 1:len_x;
            l2 = 1:1/L:len_x+1-1/L;
            Res = spline(L1, x, l2);
            
    end
end

