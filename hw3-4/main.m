n = 27;
%x = 5*cos(pi/(n-1)*(0:n-1)');
%x = linspace(-5,5,n)';
x = 5*cos(pi/(2*n)*(1:2:2*n-1)');
h = (5-(-5))/(n-1);
y = 1./(x.^4+2);
% 调用函数求插商
[p,q]=chashang(x,y);
pz = [ ];
v = linspace(-5,5,160);
for t = v
    z = q(n);
    for j = n-1:-1:1
        % 求插值多项式在t点上的值
        z = z * ( t - x(j) ) + q(j);
    end
    pz = [pz z];
end
pz = pz - 1./(v.^4+2);
%plot(v,pz,'rx-',v,1./(v.^4+2),'b-');
plot(v,pz,'rx-');
hold on


x = 5*cos(pi/(n-1)*(0:n-1)');
%x = linspace(-5,5,n)';
%x = 5*cos(pi/(2*n)*(1:2:2*n-1)');
h = (5-(-5))/(n-1);
y = 1./(x.^4+2);
% 调用函数求插商
[p,q]=chashang(x,y);
pz = [ ];
v = linspace(-5,5,160);
for t = v
    z = q(n);
    for j = n-1:-1:1
        % 求插值多项式在t点上的值
        z = z * ( t - x(j) ) + q(j);
    end
    pz = [pz z];
end
pz = pz - 1./(v.^4+2);
plot(v,pz,'gx-');

zerozero = v.*0;
plot(v,zerozero,'b');