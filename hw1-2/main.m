n = 9;
A = zeros(n);
for i = 1:n
    A(i,i)=4;
    if(i-1>=1)
        A(i,i-1)=-1;
    end
    if(i+1<=n)
        A(i,i+1)=-1;
    end
end
b = inv(A);
b(1,1)
vpa(calculate(A),16)
