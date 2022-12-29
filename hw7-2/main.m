g = @(x) atan(x) + pi;

x1 = 4.5;
x2 = g(x1);
while abs(x2 - x1)>1e-6
    x1 = x2;
    x2 = g(x1);
end
x2
