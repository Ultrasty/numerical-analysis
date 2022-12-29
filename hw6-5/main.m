p = primes(300000);
n = 20000;
p = p(1:n);
A = diag(p);
for k = 0:15
    for i = 1:n
        if i-2^k>=1
            A(i,i-2^k)=1;
        end
        if i+2^k<=n
            A(i,i+2^k)=1;
        end
    end
end

max_iteration = 30000;
w = 1;
b = zeros(n,1);
b(1) = 1;

x_old = zeros(n,1);
iteration = 0;
complete = 0;

t0 = cputime;
while ~complete
    iteration = iteration + 1;
    x = x_old;
    for i = 1:n
        x(i) = x(i) + w/A(i,i) * ( b(i)-A(i,:)*x);
    end
    if norm(x-x_old)<1e-10
        complete = 1;
    else
        x_old = x;
    end
    if iteration > max_iteration
        iteration = inf;
        complete = 1;
    end
end

cputime-t0
x(1)