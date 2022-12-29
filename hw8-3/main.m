
count = 0;
for k = 0:0.01:1
    ul = 0;
    uh = 1;
    e = 1e-6;
    err = Inf;
    
    while err > e
        u = (ul+uh)/2;

        A = zeros(8,8);
        A(1,:) = [0 0 5 4 3 2 0.5 0]*u;
        A(2:8,1:7) = diag([0.85 0.92 0.91*k 0.87*k 0.83*k 0.76*k 0.66*k]);

        max_eig = max(abs(eig(A)));
        if max_eig > 1
            uh = u;
        end
        if max_eig < 1
            ul = u;
        end
        err = abs(max_eig-1);
    end
    count = count + 1;
    result_u(count) = u;
end
k = [0:0.01:1];
plot(k,result_u);
xlabel("k")
ylabel("u")