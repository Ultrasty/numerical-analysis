%% 幂法
% function [lamda,u] = mi(A)
[x,y] = size(A);
v = rand(x,1);
lamda1 = max(v);
u = v/lamda1;

err = 1;
e = 1e-15;
it = 0;
while err > e || it<10
    it = it + 1;
    v = A*u;
    [s,ind] = max(abs(v));
    lamda2 = sign(v(ind)) * s;
    u = v/lamda2;
    err = abs(1/lamda2 - 1/lamda1);
    lamda1 = lamda2;
end

lamda = lamda2;
% end

%% 反幂法
% function [lamda,u] = fanmi(A)
[x,y] = size(A);
v = rand(x,1);
lamda1 = max(v);
u = v/lamda1;

err = 1;
e = 1e-12;
it = 0;
while err > e || it<10
    it = it + 1;
    v = A\u;
    [s,ind] = max(abs(v));
    lamda2 = sign(v(ind)) * s;
    u = v/lamda2;
    err = abs(1/lamda2 - 1/lamda1);
    lamda1 = lamda2;
end

lamda = 1/lamda2;
% end



%% QR法（虚数不适用）
A = [-1 1 0;-4 3 0;1 0 2];
tol = 1e-9;
k = 1;
AA = A;
n = size(A,1);
A0 = zeros(n);
V = A0;
count = 0;
while norm( diag(A-A0) ) > tol
    count = count +1;
    k = k + 1;
    A0 = A;
    [Q,R] = qr(A);
    A = R*Q;
end
lambda = diag(A)';
for i = 1:n
    u = rand(n,1);
    for j = 1:3
        v = (AA - lambda(i)*eye(n)) \ u;
        [s,ind] = max(abs(v));
        u = v / sign(v(ind)) / norm(v);
    end
    V(:,i) = u;
end
