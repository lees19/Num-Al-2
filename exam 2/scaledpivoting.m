function [A x] = scaledpivoting(A)

[n m] = size(A);
nrow = [1:n]
for i = 1:n-1 
    p = 0;
    [s p] = max(abs(A(nrow(i:n-1), nrow(i:n-1))), [], 2);
    [s p] = max(abs(A(i:n-1, i) ./ s));
    p = p + i - 1;
    if A(nrow(p), i) == 0
        fprint("DNE");
        break;
    end 
   
    if nrow(p) ~= nrow(i)
        temp = A(nrow(i), :);
        A(nrow(i), :) = A(nrow(p), :);
        A(nrow(p), :) = temp;
    end
    
    for j = i+1:n
        m = A(nrow(j), i)/A(nrow(i), i);
        A(nrow(j), :) = A(nrow(j), :) - m*A(nrow(i), :);
    end
    
    if A(nrow(n), n) == 0
        fprint("asdf")
        break 
    end
end

x = zeros(1,n);
x(n) = A(nrow(n), n+1)/A(nrow(n), n);
for i = n-1:-1:1
    x(i) = (A(nrow(i), n+1) - sum(A(nrow(i), 1:n) .* x))/A(nrow(i), i);
end

return 