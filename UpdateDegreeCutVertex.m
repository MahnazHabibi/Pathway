function[UDegree,Matrix]=UpdateDegreeCutVertex(Matrix,Degree,I)
%AdjacentI=find(Matrix(I,:)>0);
%UDegree=Degree;
%UDegree(I)=0;
%for i=1:length(AdjacentI)
%    UDegree(AdjacentI(i))=UDegree(AdjacentI(i))-Matrix(I,AdjacentI(i));
%end
%Matrix(I,:)=[0];
%Matrix(:,I)=[0];


Matrix(I,:)=[0];
Matrix(:,I)=[0];
UDegree=sum(Matrix);