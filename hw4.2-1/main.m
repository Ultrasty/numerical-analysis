x = [1953 1964 1982 1990 2000]';
y = [5.82 6.95 10.08 11.34 12.66]';
A = [ones(5,1) x -x.*y];
z = A\y;

v = (1953:2000);
plot(v,(z(1)+z(2)*v)./(1+z(3)*v))
hold on;
scatter(x,y);