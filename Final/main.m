clear all

A = [1, 1, 0, 3;
    2, 1, -1, 1;
    3, -1, -1, 2;
    -1, 2, 3, -1];

b = [1; 1; -3; 4];

A = [A b];
rref(A)

[A x] = scaledpivoting(A)
%{
L = eye(4)
U = eye(4)

[A x L U] = LUDecomp(A, L, U);

L 
U

%}