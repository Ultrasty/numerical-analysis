function I = fsimpson(fun,a,b,n)
h = (b-a)/n;
x = linspace(a,b,2*n+1);
y = feval(fun,x);
I = (h/6) * ( y(1)+2*sum(y(3:2:2*n-1))+4*sum(y(2:2:2*n))+y(2*n+1) );