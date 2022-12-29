n = 9;
x = (2:1:n+1)';

y = (1./(x-1).*(x.^n-1));

%调用函数求插商
[p,q]=chashang(x,y);

pz = zeros(1,n);
pz(n) = q(n);


for j = n-1:-1:1
    pz(j:n-1) = pz(j:n-1)-x(j)*pz(j+1:n);
    pz(j) = pz(j) + q(j);
end
