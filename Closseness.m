function[closs]=Closseness(Adj)
n=length(Adj);
M=sparse(Adj);
D(n,n)=0;
for i=1:n-1
    for j=i+1:n
        a=graphshortestpath(M,i,j);
        if a<n
            D(i,j)=a;
            D(j,i)=a;
        else
            D(i,j)=0;
            D(j,i)=0;
        end
    end
end

sum_Dist=sum(D);

for i=1:n
    if sum_Dist(i)>0
        closs(i)=(n-1)/sum_Dist(i);
    else
       closs(i)=0;
    end
end
