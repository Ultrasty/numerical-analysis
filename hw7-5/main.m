n = 100;
x = zeros(n,1);
for i = 0:20000
    x(mod(i+2,n)+1)=(sin(x(mod(i,n)+1))-sin(x(mod(i+1,n)+1))-cos(x(mod(i+3,n)+1))-cos(x(mod(i+4,n)+1)) -1)/(n + mod(i,n) +1);
end
