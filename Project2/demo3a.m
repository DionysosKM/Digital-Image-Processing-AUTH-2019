load('dip_hw_2.mat');
tic
rng(1);
global T1 T2;
T1=0;
T2=0;

G1=Image2Graph(d2a);
G2=Image2Graph(d2b);
[M1,N1,~]=size(d2a);
[M2,N2,~]=size(d2b);

img12=myNCuts(G1 ,2);
figure;
a=reshape(img12,M1,N1);
imshow(a./2)
img13=myNCuts(G1 ,3);
figure;
a=reshape(img13,M1,N1);
imshow(a./3)
img14=myNCuts(G1 ,4);
figure;
a=reshape(img14,M1,N1);
imshow(a./4)


img22=myNCuts(G2 ,2);
figure;
b=reshape(img22,M2,N2);
imshow(b./2)
img23=myNCuts(G2 ,3);
figure;
b=reshape(img23,M2,N2);
imshow(b./3)
img24=myNCuts(G2 ,4);
figure;
b=reshape(img24,M2,N2);
imshow(b./4)

toc