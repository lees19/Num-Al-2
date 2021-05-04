A=[3 -13 9 3;-6 4 1 -18;6 -2 2 4;12 -8 6 10];
display(A);
b=[-19;-34;16;26];
display(b);

c = [A b]

rref(c)

[A x] = scaledpivoting(c)