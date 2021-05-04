clear all 
format short

syms x y z

A = [3 -1 1; 
    3 6 2; 
    3 3 7]
b = [1; 0; 4]

rref([A b])

T = [0 1/3 -1/3; 
    -1/2 0 -1/3; 
    -3/7 -3/7 0];
x = [0; 0; 0];
c = [1/3; 0; 4/7];

for i = 1:2
    for j = 1:3
        temp = T(j, :)*x + c; 
        x(j) = temp(j);
    end
    x
end