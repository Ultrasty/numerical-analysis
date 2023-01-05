% [X,Y] = meshgrid(0:0.1:8);
% Z = X.*X/2+Y.*Y/2 - X.*Y;
% mesh(X,Y,Z)

l=1;
u =2;
a = 4;

[X,Y] = meshgrid(0:0.1:18);
Z = -1/4*(X-Y).^2 +X*(l-a) + Y*(a-u);
f = @(x) -(-1/4*(x(1)-x(2)).^2 +x(1)*(l-a) + x(2)*(a-u));
% mesh(X,Y,Z)

[x,y] = fmincon(f,[ 0 0],[],[],[],[],[0 0])
