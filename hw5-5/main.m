N = 100000000;
A = rand(N,1);
B = rand(N,1);
C = rand(N,1);
f = @(x,y,z) sin(x).*sin(y).*sin(z)./(1+x.^2+y.^2+z.^2);
mean(f(A,B,C))