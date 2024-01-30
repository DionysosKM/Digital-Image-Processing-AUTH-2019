load('dip_hw_2.mat');
tic
rng(1);

G1=Image2Graph(d2a);
G2=Image2Graph(d2b);
[M1,N1,~]=size(d2a);
[M2,N2,~]=size(d2b);

img12=mySpectralClustering(G1 , 2);
figure;
a=reshape(img12,M1,N1);
imshow(a./2)%diairesh g na einai emfanisimo to apoteslma kathws h imshow douleyei gia times 0-1
img13=mySpectralClustering(G1 , 3);
figure;
a=reshape(img13,M1,N1);
imshow(a./3)
img14=mySpectralClustering(G1 , 4);
figure;
a=reshape(img14,M1,N1);
imshow(a./4)


img22=mySpectralClustering(G2 , 2);
figure;
b=reshape(img22,M2,N2);
imshow(b./2)
img23=mySpectralClustering(G2 , 3);
figure;
b=reshape(img23,M2,N2);
imshow(b./3)
img24=mySpectralClustering(G2 , 4);
figure;
b=reshape(img24,M2,N2);
imshow(b./4)

toc