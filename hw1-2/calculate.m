function invA11 = calculate(A)
[t1,t2] = size(A);
An_1= (7+4*3^(1/2))/(6+4*3^(1/2))*(2+3^(1/2))^(t1-1) + (7-4*3^(1/2))/(6-4*3^(1/2))*(2-3^(1/2))^(t1-1);
An= (7+4*3^(1/2))/(6+4*3^(1/2))*(2+3^(1/2))^t1 + (7-4*3^(1/2))/(6-4*3^(1/2))*(2-3^(1/2))^t1;
invA11=(An_1/An);
end
