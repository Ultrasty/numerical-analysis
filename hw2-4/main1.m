clc;
clear;
n=4;
Hilb = hilb(n);
for i=1:n
    dd(i)=i;
end
d=dd';
B=[Hilb d];
for k=1:n-1
    [m,ii]=max(B(k:end,k));
    ii=ii+k-1;
    t=B(ii,:);
    B(ii,:)=B(k,:);
    B(k,:)=t;
    for i=k+1:n
        B(i,:)=-B(i,k)/B(k,k)*B(k,:)+B(i,:);
    end
end
b=B(:,n+1);
result(n)=b(n)/B(n,n);
for i=n:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+B(i,j)*result(j);
    end
    result(i)=(b(i)-sum)/B(i,i);
end

result = result';
truth = Hilb\d;

result - truth
% 
% Hilb*result;
% Hilb*truth;
