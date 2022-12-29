f = @(x) sin(x^3);
ff = @(x) 3*x^2*cos(x^3);
fff = @(x) 6*x*cos(x^3)-9*x^4*sin(x^3);
g = @(x) x - (f(x)*ff(x))/(ff(x)*ff(x)-f(x)*fff(x));
x1 = 1;
x2 = g(x1);

result = zeros(20,1);
result(1) = x1;
for i = 1:20
    x1 = x2;
    result(i+1) = x1;
    x2 = g(x1)
end
