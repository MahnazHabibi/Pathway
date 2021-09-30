function[Ex]=Extention(Adj)
n=length(Adj);
for i=1:n
    N=find(Adj(i,:)==1);
    S=union(N,[i]);
    D=sum(Adj(S,:));
    x=find(D>0);

    N_S=setdiff(x,S);
    Ex(i)=length(N_S)/length(S);
end
