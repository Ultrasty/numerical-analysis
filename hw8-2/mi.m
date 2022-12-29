function [lamda,u] = mi(A)
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
    lamda2 = max(abs(v));
    u = v/lamda2;
    err = abs(1/lamda2 - 1/lamda1);
    lamda1 = lamda2;
end

lamda = lamda2;
end

