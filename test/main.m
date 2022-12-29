%% QR法
A = [5 -2 -5 -1;1 0 -3 2;0 2 2 -3;0 0 1 -2];
tol = 1e-7;
k = 1;
AA = A;
n = size(A,1);
A0 = zeros(n);
V = A0;
count = 0;
while norm( diag(A-A0) ) > tol && count < 10000
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