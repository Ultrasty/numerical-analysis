f = @(x) 3.*x.^3 - 8.*x.^2 - 8.*x -12;
ff = @(x) 9.*x.^2-16.*x-8;
g = @(x) x -f(x)/ff(x);
x1 = 3.5;
x2 = g(x1);

result = zeros(20,1);
result(1) = x1;
for i = 1:20000
    x1 = x2;
    result(i+1) = x1;
    x2 = g(x1)
%     if(abs(x2-x1)<1e-4)
%         break
%     end
end

x = [-10:0.01:10];
y = feval(f,x);
plot(x,y)