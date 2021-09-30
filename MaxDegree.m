function[I,maxdegree]=MaxDegree(Degree,X)

DegreeX=Degree(X);
[x,y]=sort(DegreeX);
%x=x(length(Degree):-1:1);
%y=y(length(Degree):-1:1);

I=X(y(length(y)));
maxdegree=x(length(x));