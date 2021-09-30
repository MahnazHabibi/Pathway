function[]=Chek_Treshold(X,K,T)
m=length(K);
n=length(T);
[t1,t2]=size(X);
OutputFile=input('Please enter the name of output file: ');
C=fopen(char(OutputFile),'a');
for i=1:m
    for j=1:n
        fprintf(C,'%5.3f,%5.3f,',K(i),T(j));

        [Laplas]=Laplacian_Score_Feature_Selection(X,K(i),T(j));
        for k=1:t1
        A(k)=sum(Laplas.*X(k,:));
        fprintf(C,'%5.3f,',A(k));
        end
        fprintf(C,'\n');
    end
end
fclose(C);
     