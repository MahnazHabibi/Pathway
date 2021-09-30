function [P,B]=LR(X,Y)
[B]=mnrfit(X,Y);
n=length(Y);
for i=1:n
    x=B(1)+B(2)*X(i,1)+B(3)*X(i,2)+B(4)*X(i,3)+B(5)*X(i,4)+B(6)*X(i,5)+B(7)*X(i,6);
    P(i)=exp(x)/(1+exp(x));
end
