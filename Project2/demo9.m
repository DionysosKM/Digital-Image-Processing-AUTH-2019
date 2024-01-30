load('dip_hw_2.mat');
rng(1);
Af1=Image2Graph(d2a);
Af2=Image2Graph(d2b);
[M1,N1,~]=size(d2a);
[M2,N2,~]=size(d2b);

A=recursion(Af1);
a=reshape(A,M1,N1);
norma = a - min(a(:));
norma = norma ./ max(norma(:));
figure;
imshow(norma);


B=recursion(Af2);
b=reshape(B,M2,N2);
normb = b - min(b(:));
normb = normb ./ max(normb(:));
figure;
imshow(normb);





   
