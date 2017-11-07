function [Sols]=EulerExp(A,x0,a,b,n)
h=(b-a)/n;
W_ant=x0;
Sols(:,1)=x0;
for i=1:n
    W_act=W_ant;
    W_act=(eye(length(A))+h*A)*W_ant;
    Sols(:,i+1)=W_act;
end
