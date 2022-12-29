function draw(a,b,c)
phi=0:0.1*pi:2*pi;
theta=(-1:0.1:1)';
x=a*cosh(theta)*cos(phi);
y=b*cosh(theta)*sin(phi);
z=c*sinh(theta)*ones(size(phi));
surf(x,y,z)
alpha(0.5)
end
