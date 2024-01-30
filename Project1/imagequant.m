function [q] = imagequant(x, w1, w2, w3)
x(:,:,1)=myquant(x(:,:,1), w1);
x(:,:,2)=myquant(x(:,:,2), w2);
x(:,:,3)=myquant(x(:,:,3), w3);
q=x;
imagedequant(q,w1,w2,w3);
end