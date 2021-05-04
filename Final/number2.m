clear all; 

A = [10, 3, 2, 4; 
    3, 11, 1, 2; 
    2, 1, 8, 3; 
    4, 2, 3, 9];

y = [30.4; 33.7; 29.7; 32.0];

L = chol(A, 'lower')

[A x L1 U1] = LUDecomp([A y], eye(4), eye(4))

%part a
a = A\y
%part b
b = L'\(L\y)
