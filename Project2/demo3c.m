load('dip_hw_2.mat');
tic
rng(1);
global T1 T2 ;
G1=Image2Graph(d2a);
G2=Image2Graph(d2b);
[M1,N1,~]=size(d2a);
[M2,N2,~]=size(d2b);
T1=5;
T2=0.8;
img1=myNCuts(G1, 2);
figure;
a=reshape(img1,M1,N1);
max_a=max(a(:));
min_a=min(a(:));
a=(a-min_a)/(max_a-min_a);%metatrepw ta stoixeia tou pinaka sto diasthma 0-1
imshow(a)

rng(1);
img2=myNCuts(G2, 2);
figure;
b=reshape(img2,M2,N2);
max_b=max(b(:));
min_b=min(b(:));
b=(b-min_b)/(max_b-min_b);
imshow(b)

toc
