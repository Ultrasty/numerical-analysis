
A = [25 2 13
    4 28 8
    2 -13 25];
b = [40 40 14]';
tol = 1e-8;

D = diag(diag(A));
L = D-tril(A);
U = D-triu(A);
x = zeros(size(b));
for iter=1:500
    x = D\(b+L*x+U*x);
    error = norm( b-A*x ) / norm(b);
    if ( error < tol )
        break;
    end
end