while 1
    A = floor((rand(3)-0.5)*20)/2;
    D = diag(diag(A));
    L = D-tril(A);
    U = D-triu(A);
    BJ = D\(L+U);
    BG = (D-L)\ U;
    if max(max(isnan(BJ))) == 0 && max(max(isinf(BJ))) == 0 && max(max(isnan(BG))) == 0 && max(max(isinf(BG))) == 0
        if max(abs(eig(BJ)))<1 && max(abs(eig(BG)))<1 && max(abs(eig(BJ)))<max(abs(eig(BG)))
            break
        end
    end
end

eig(BJ)
eig(BG)