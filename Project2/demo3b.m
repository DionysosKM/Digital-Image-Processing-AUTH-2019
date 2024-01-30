load('dip_hw_2.mat');
tic
rng(1);

global T1 T2;
T1=0;
T2=0;
G1=Image2Graph(d2a);
G2=Image2Graph(d2b);
[M1,N1,c1]=size(d2a);
[M2,N2,c2]=size(d2b);

k1=myNCuts(G1,2);
nCV1 = calculateNcut(G1, k1);
figure;
a=reshape(k1,M1,N1);
imshow(a./2);

rng(1);
k2=myNCuts(G2,2);
nCV2 = calculateNcut(G2, k2);
figure;
b=reshape(k2,M2,N2);
imshow(b./2);
toc