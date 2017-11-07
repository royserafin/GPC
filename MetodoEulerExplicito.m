function [y] =MetodoEulerExplicito(f,x0,a,b,n)
h=(b-a)/n
y(1)=x0;
for i=2:n
    y(i)=y(i-1)+h*f((i-1)*h,y(i-1));
end
