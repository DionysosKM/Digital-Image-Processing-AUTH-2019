function clusterIdx = mySpectralClustering(anAffinityMat, k)
tic

A=anAffinityMat;
S=sum(A,2); %ypologismos athroismatwn grammhs
D=diag(S); %dhmiourgia diagwniou pinaka 
L=D-A;
[V, eigenvalues]=eigs(L,k,'SM'); %ypologismos idiotimwn-idiodianysmatwn
clusterIdx = kmeans(V,k); % omadopoihsh V

toc
end