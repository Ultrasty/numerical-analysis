clc;
clear;
N=1000;
a = 1;
b = 2;
h = (b-a)/N;
x = (a:h:b);
hold on
%% 欧拉方法
y = zeros(N+1,1);
y(1) = -1;
for k = 2:N+1
    y(k) = y(k-1) + h * f(x(k-1),y(k-1));
end
plot(x,y)
%% 梯形公式
y = zeros(N+1,1);
y(1) = -1;
for k = 2:N+1
    % 不动点迭代法
    for i = 1:20
        y(k) = y(k-1) + 0.5*h*(f(x(k-1),y(k-1))+f(x(k),y(k)));
    end
end
plot(x,y)
%% 改进的欧拉公式
y = zeros(N+1,1);
y(1) = -1;
for k = 2:N+1
    yp = y(k-1)+h*f(x(k-1),y(k-1));
    yc = y(k-1)+h*f(x(k),yp);
    y(k)=(yp+yc)/2;
end
plot(x,y)
%% 标准四阶四段龙格-库塔公式
y = zeros(N+1,1);
y(1) = -1;
for k = 2:N+1
    k1 = h*f(x(k-1),y(k-1));
    k2 = h*f(x(k-1)+h/2,y(k-1)+k1/2);
    k3 = h*f(x(k-1)+h/2,y(k-1)+k2/2);
    k4 = h*f(x(k-1)+h,y(k-1)+k3);
    y(k) = y(k-1)+(k1+2*k2+2*k3+k4)/6;
end
plot(x,y)
%% ode45 用来当作真值，和上面的方法比较
[t,y] = ode45(@f,[1 2],-1);
plot(t,y);