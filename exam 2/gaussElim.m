function [A x] = gaussElim(A)

[n, m] = size(A);
for i = 1:n-1 
    p = -1;
    p = find(A(i:n, i), 1, 'first')+i-1;
    if p == -1
        fprint("DNE");
        break;
    end 
   
    if p ~= i
        temp = A(i, :);
        A(i, :) = A(p, :);
        A(p, :) = temp;
    end
    
    for j = i+1:n
        m = A(j, i)/A(i, i);
        A(j, :) = A(j, :) - m*A(i, :);
    end
    
    if A(n, n) == 0
        fprint("asdf")
        break 
    end
end

x = zeros(1,n);
x(n) = A(n, n+1)/A(n, n);
for i = n-1:-1:1
    x(i) = (A(i, n+1) - sum(A(i, 1:n) .* x))/A(i, i);
end

return 