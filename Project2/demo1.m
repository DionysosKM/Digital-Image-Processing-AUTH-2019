load('dip_hw_2.mat');
tic
rng(1);
k2= mySpectralClustering(d1a , 2);
k3= mySpectralClustering(d1a , 3);
k4= mySpectralClustering(d1a , 4);
toc