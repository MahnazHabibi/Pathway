function [Weighted_Matrix,Adj,P]=Pathway_Network()
PathwayFile=input('Please enter the name of pathway file: ');
Co=fopen(char(PathwayFile));
t=fgetl(Co);
k=1;
while t~=-1 
    x=find(t=='	');
    P(k).pathway=char(t(1:x-1));   
    Y=find(t==',');
    y=length(Y);
    Gene={};
    if y>0
        Gene{1}=char(t(x+1:Y(1)-1));
        for i=1:y-1
            Gene{i+1}=char(t(Y(i)+1:Y(i+1)-1));
        end
    end
    P(k).Genes=Gene;
    k=k+1;
    t=fgetl(Co);
end
fclose(Co);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n=length(P);
Weighted_Matrix(n,n)=0;
Adj(n,n)=0;
for i=1:n-1
    for j=i+1:n
        Weighted_Matrix(i,j)=length(intersect(P(i).Genes,P(j).Genes));
        Weighted_Matrix(j,i)=Weighted_Matrix(i,j);
        if Weighted_Matrix(i,j)>0
            Adj(i,j)=1;
            Adj(j,i)=1;
        end
    end
end

