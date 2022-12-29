% fun = @(x) 2./pi./sqrt(1-x.*x).*exp(x).*(1);
% q = integral(fun,-1,1)
% 
% fun = @(x) 2./pi./sqrt(1-x.*x).*exp(x).*(x);
% q = integral(fun,-1,1)
% 
% fun = @(x) 2./pi./sqrt(1-x.*x).*exp(x).*(2.*x.^2-1);
% q = integral(fun,-1,1)

fun = @(x) 2./pi./sqrt(1-x.*x).*nthroot(x,3).*(1);
q = integral(fun,-1,1)

fun = @(x) 2./pi./sqrt(1-x.*x).*nthroot(x,3).*(x);
q = integral(fun,-1,1)

fun = @(x) 2./pi./sqrt(1-x.*x).*nthroot(x,3).*(2.*x.^2-1);
q = integral(fun,-1,1)

% x=(-1:0.01:1);
% y = 2./pi./sqrt(1-x.*x).*(x.^(1/3)).*(x);
% plot(x,y)