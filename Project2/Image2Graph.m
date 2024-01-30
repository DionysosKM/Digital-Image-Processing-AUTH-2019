function myAffinityMat = Image2Graph(imIn)
tic

[M, N, c]=size(imIn);
temp=reshape(imIn, M*N, c); %Metatrepei thn eikona se disdiastato pinaka M*Nx3
D=pdist(temp); %Ypologismos apostasewn me eisodo ton disdiastato pinaka
A=squareform(D); %dhmiourgia tetragonikou pinaka me tis apostaseis ollwn twn shmeiwn
% myAffinityMat=1./exp(A/var(A(:))) gia na doulevei me katofli T1=0.2
myAffinityMat=1./exp(A);

toc
end