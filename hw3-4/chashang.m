function [p,q]=chashang(x,y)
n = length(x);
p(:,1) = x;
p(:,2) = y;
for j = 3:n+1
    p(1:n+2-j,j) = diff(p(1:n+3-j,j-1)) ./(x(j-1:n)-x(1:n+2-j));
end
q = p(1,2:n+1)';