%function[Cut,A,B,S0,S1,S2,S3,S4]=L(Matrix,Vertices)
function[Cut,A,B,S4]=L(Matrix,Vertices)
Degree=sum(Matrix);
n=length(Degree);
LaplacianMatrix(n,n)=0;
for i=1:n
    LaplacianMatrix(i,i)=Degree(i);
end
LaplacianMatrix=LaplacianMatrix-Matrix;
%for i=1:n-1
%    for j=i+1:n
%        if Matrix(i,j)>0
%            LaplacianMatrix(i,j)=-Matrix(i,j);
%            LaplacianMatrix(j,i)=-Matrix(i,j);
%        end
%    end
%end

[vectorL,eigenL]= eig(LaplacianMatrix);
[x,y]=max(max(eigenL));
V=vectorL(:,y)';
[Y1,Y2]=sort(V);

%for k=1:1
    A=Y2(1:floor(n/2));
    B=Y2(floor(n/2)+1:n);
    Cut=[];
    Cut(n)=0;
    Cut(A)=1;
%    H(k).Cut=Cut;
%    H(k).A=A;
%    H(k).B=B;
%    S01=CutVertices(Cut,Matrix,0);
%    S11=CutVertices(Cut,Matrix,1);
%    S21=CutVertices(Cut,Matrix,2);
%    S31=CutVertices(Cut,Matrix,3);
    S41=CutVertices(Cut,Matrix,8);
%   S0=Vertices(S01);
%    S1=Vertices(S11);
%    S2=Vertices(S21);
%    S3=Vertices(S31);
    S4=Vertices(S41);
    
    
%    H(k).S=S;
%end