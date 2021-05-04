clear all; 
digits(8); 
syms x; 
sum = 0; 
f(x) = piecewise(-2<x<0, -1, 0<x<2, 2); 
L = 4;
a0 = vpa((1/L)*int(f(x), x, -2, 2));
g(x) = a0;

for n=1:6; 
    an = vpa((2/L)*int(f(x)*cos(2*pi*n*x/L), x, -2, 2)); 
    bn = vpa((2/L)*int(f(x)*sin(2*pi*n*x/L), x, -2, 2)); 
    g(x) = vpa(g(x)) + vpa((an*cos(2*pi*n*x/L)+bn*sin(2*pi*n*x/L))); 
end;

xd = -2:.05:2; 
yd = subs(f, x, xd);
yd2=subs(g, x, xd); 
plot(xd, yd, 'r-.'); 
hold on; 
plot(xd, yd2); 
g
