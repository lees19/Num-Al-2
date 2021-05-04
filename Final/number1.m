clear all; 
digits(8)
x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
y = [1; 2.9; 6.8; 12; 20.5; 30.9; 42.9; 51.5; 73; 90.5];

V = flip(vander(x), 2)

V = [V y]
[A sol] = gaussElim(V)

xd = 0:.05:9;
plot(x, y)
hold on
plot(xd, polyval(flip(sol), xd))

