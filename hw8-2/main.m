for n = 2:2:40
    A = eye(n)*2;
    for i = 1:n
        if i-1>=1
            A(i,i-1)=-1;
        end
        if i+1<=n
            A(i,i+1)=-1;
        end
    end
    [lamda1,u1] = mi(A);
    [lamda2,u2] = fanmi(A);
    result(n/2) = lamda1/lamda2;
    result2(n/2) = max(eig(A))/min(eig(A));
    result
    result2
end