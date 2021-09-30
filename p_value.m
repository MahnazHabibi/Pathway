function [p]=p_value(P,L)
%L=1264
n=length(P);
for i=1:n
    p(i)=length(P(i).Genes)/L;
end
