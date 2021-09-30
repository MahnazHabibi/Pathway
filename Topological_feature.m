function [Features_Matrix]=Topological_feature()
[Weighted_Matrix,Adj,P]=Pathway_Network();
[p]=p_value(P,1265);
[degree]=Degree(Adj);
[bn]=Betweenness(Weighted_Matrix);
[Es]=Esentialility(Weighted_Matrix);
[Ex]=Extention(Adj);
[closs]=Closseness(Adj);
Features_Matrix(:,1)=p';
Features_Matrix(:,2)=degree';
Features_Matrix(:,3)=bn';
Features_Matrix(:,4)=Es';
Features_Matrix(:,5)=Ex';
Features_Matrix(:,6)=closs';



OutputFile=input('Please enter the name of output file: ');
C=fopen(char(OutputFile),'a');
n=length(P);
for i=1:n
    fprintf(C,'%s:',char(P(i).pathway));
    for j=1:6
        fprintf(C,'%5.3f,',Features_Matrix(i,j));
    end
    fprintf(C,'\n');
end
fclose(C);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
