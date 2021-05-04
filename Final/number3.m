clear all

x = [1; 2; 3]
y = [6; 17; 34]

V = flip(vander(x), 2)

V = [V y]
[A sol] = gaussElim(V)
sol = flip(sol)

coef = [3.1 1.9 1.1]
learn_rate = .01
epsilon = 5*10^-5

while max(coef - sol) > epsilon
    grad = [0; 0; 0];
    grad(1) = (2/3) * sum((((coef(1)*(x.^2)+coef(2)*x+coef(3)) - y) .* x.^2));
    grad(2) = (2/3) * sum((((coef(1)*(x.^2)+coef(2)*x+coef(3)) - y) .* x));
    grad(3) = (2/3) * sum((((coef(1)*(x.^2)+coef(2)*x+coef(3)) - y)));
    grad = learn_rate * (grad);
    coef = coef - grad.';
end
coef
(coef(1)*(x.^2)+coef(2)*x+coef(3))
