a=linspace(1,1,100);
b=linspace(12,12,101);
c=linspace(1,1,100);
d=linspace(10,10,101);
d(1)=11;
d(101)=11;
result = mysolver(a,b,c,d);