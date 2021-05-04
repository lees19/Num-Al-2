a = 0;
epsilon = 10^-2;
n = 1;
M = zeros(136, 0)
while 1
    a = (1 + 1/n)^n;
    M(n) = a;
    n = n+1;
    if (exp(1) - a) < epsilon
        break
    end
end

M
n