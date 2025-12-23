function Res = compresor(x, M)
    len = length(x);
    comp_x = x(1 : M : len);
    Res = comp_x;
end

