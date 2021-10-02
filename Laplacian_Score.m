function [] =Laplacian_Score(Epsilon,threshold)
PathwayFile=input('Please enter the feature file: ');
Co=fopen(char(PathwayFile));
t=fgetl(Co);
k=1;
while t~=-1 
    X=find(t==':');
    Y=find(t==',');
    pathway{k}=char(t(1:X(length(X))-1));   
    Y=find(t==',');
    y=length(Y);
    Gene={};
    if y>0
        G=char(t(X(length(X))+1:Y(1)-1));
        F(1)=str2num(G);
        for i=1:y-1
            G=char(t(Y(i)+1:Y(i+1)-1));
            F(i+1)=str2num(G);
        end
    end
    Feature(k,:)=F;
    k=k+1;
    t=fgetl(Co);
end
fclose(Co);


[Feature_Normal]=Normal_matrix(Feature);
[Laplas]=Laplacian_Score_Feature_Selection(Feature_Normal,Epsilon,threshold);
n=length(pathway);
OutputFile=input('Please enter the name of output file: ');
C=fopen(char(OutputFile),'a');
for i=1:n
l=sum(Laplas.*Feature_Normal(i,:))-2*Laplas(5)*Feature_Normal(i,5);   
fprintf(C,'%s, %5.3f \n',char(pathway{i}),l);
end
fclose(C);
end
