function x = mysolver(q,w,e,r)
y(1) = r(1);
u(1) = e(1) ;
l(1) = w(1);
n = length(w);
for j = 2:n-1
    l(j) = w(j) - q(j-1)*u(j-1);
    u(j) = e(j) / l(j);
    y(j) = ( r(j) - y(j-1)*q(j-1) ) / l(j);
end
l(n) = w(n) - q(n-1)*u(n-1);
y(n) = (r(n) - y(n-1)*q(n-1)) / l(n);
x(n) = y(n);
for j = n-1:-1:1
    x(j) = y(j) - u(j) * x(j+1);
end
end