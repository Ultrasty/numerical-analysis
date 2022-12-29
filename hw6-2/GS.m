function [x,iter] = GS(A,b,tol)
D = diag(diag(A));
L = D-tril(A);
U = D-triu(A);
x = zeros(size(b));
for iter=1:500
x = (D-L)\(b+U*x);
error = norm( b-A*x ) / norm(b);
if ( error < tol )
break;
end
end

