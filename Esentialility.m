function[Es]=Esentialility(Weighted_Matrix)
n=length(Weighted_Matrix);
[Cut,A,B,S0]=L(Weighted_Matrix,[1:n]);
Es(n)=0;
for i=1:length(S0)
    Es(S0(i))=1;
end
    
