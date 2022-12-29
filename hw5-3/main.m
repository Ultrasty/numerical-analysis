
f = @(x) (x.^4).*(1-x).^4./(1+x.^2);
ground_truth = zeros(20,1) + integral(f,0,1);
result = zeros(20,1);
for n = 1:20
    N = 2^n+1;
    result(n) = fsimpson(f,0,1,N);
end
error = abs(ground_truth - result);
x = (1:20);
y = log(error)/log(10);
plot(x,y)
ylabel('log10(error)') 
xlabel('n, i.e. log2(N)') 
