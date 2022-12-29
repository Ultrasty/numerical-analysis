x = [ 0 3 5 7 9 11 12 13 14 15];
y = [ 0 0 1.2 1.7 2.0 2.1 2.0 1.8 1.2 1.3 1.6 0];

pp = csape(x,y,'second');
[breaks,coefs,npolys,ncoefs,dim] = unmkpp(pp);

xx = (0:0.1:15);
yy=ppval(pp,xx);
plot(xx,yy);
