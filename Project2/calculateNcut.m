function nCutValue = calculateNcut(anAffinityMat, clusterIdx)
tic

A=anAffinityMat;
c1=clusterIdx==1;
c2=clusterIdx==2;
assocAA=sum(sum(A(c1,c1)));
assocBB=sum(sum(A(c2,c2))); 
assocAV=sum(sum(A(c1,:)));
assocBV=sum(sum(A(c2,:)));
Nassoc=assocAA/assocAV+assocBB/assocBV;
nCutValue=2-Nassoc;

toc
end


