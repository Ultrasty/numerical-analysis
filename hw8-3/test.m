
k = 0.5445;
u = 0.1615;
A = zeros(8,8);
A(1,:) = [0 0 5 4 3 2 0.5 0]*u;
A(2:8,1:7) = diag([0.85 0.92 0.91*k 0.87*k 0.83*k 0.76*k 0.66*k]);
A
mi(A)