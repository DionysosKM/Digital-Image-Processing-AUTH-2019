function clusterIdx = myNCuts(anAffinityMat, k)
tic
global T1 T2 ;
A=anAffinityMat;
S=sum(A,2);
D=diag(S);
L=D-A;
[V, eigenvalues]=eigs(L,D,k,'SM');
clusterIdx=kmeans(V,k);

nCutValue=calculateNcut(A , clusterIdx);%ypologismos protwn oriwn se periptwsh anadromhs
c1=nnz(clusterIdx==1);
c2=nnz(clusterIdx==2);
if (c1>=T1 && c2>=T1 && nCutValue<=T2)
  n1=clusterIdx==1;%stoixeia tou cluster 1 
  n2=clusterIdx==2;%stoixeia tou cluster 2
  clusterIdx(n1)=myNCuts(A(n1,n1),2)*2;
  clusterIdx(n2)=myNCuts(A(n2,n2),2)*2+1;
end

toc
end