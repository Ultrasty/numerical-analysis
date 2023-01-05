% A = [1 1];
% b = 1;
% 
% P = eye(2) - A'*((A*A')\A);
% x = [-4 6]';
% 
% P*x
test(7)

function r = test(a)
    r = a*a;
end