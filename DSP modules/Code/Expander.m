function Res = Expander(x, L) 
    len_x = length(x);
    exp_l = zeros(1, L * len_x);
    len_exp = length(exp_l);
    exp_l(1: L :len_exp) = x;
    Res = exp_l;
end

