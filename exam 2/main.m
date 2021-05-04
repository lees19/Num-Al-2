clear all

A = [2.11, -4.21, .921; 
    4.01, 10.2, -1.12; 
    1.09, .987, .832];

b = [2.01; -3.09; 4.21];

A = [A b];

rref(A)

[s p] = max(abs(A), [], 2)

[A x] = scaledpivoting(A)

