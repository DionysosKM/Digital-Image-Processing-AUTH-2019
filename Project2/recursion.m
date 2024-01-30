function clusterId= recursion (myAffinityMat)
 T1=5;
 T2=0.8; 
 clusterId=myNCuts(myAffinityMat,2);
 nCutValue=calculateNcut(myAffinityMat , clusterId);
 c1=clusterId==1;
 c2=clusterId==2;
 if not(length(clusterId(c1))<T1 || length(clusterId(c2))<T1  || nCutValue>T2)
  clusterId(c1)=2*recursion(myAffinityMat(c1,c1));
  clusterId(c2)=2*recursion(myAffinityMat(c2,c2))+1;
 end
end