
max_iteration = 30000;
w = linspace(0.1,1.9,19);
b = [41 52 12]';
A = [-55 -5 12; 21 36 -13; 24 7 47];

n = length(b);
for k = 1:length(w)
    x_old = zeros(n,1);
    iteration(k) = 0;
    complete = 0;
    while ~complete
        iteration(k) = iteration(k) + 1;
        x = x_old;
        for i = 1:n
            x(i) = x(i) + w(k)/A(i,i) * ( b(i)-A(i,:)*x );
        end
        if norm(x-x_old)<1e-4
            complete = 1;
        else
            x_old = x;
        end
        if iteration(k)>max_iteration
            iteration(k) = inf;
            complete = 1;
        end
    end
end
[minit,ind] = min(iteration);
bar(w,iteration)
xlabel("omega")
ylabel("迭代次数")