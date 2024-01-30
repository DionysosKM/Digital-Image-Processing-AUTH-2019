function [x] = imagedequant(q, w1, w2, w3)
q(:,:,1)=mydequant(q(:,:,1),w1);
q(:,:,2)=mydequant(q(:,:,2),w2);
q(:,:,3)=mydequant(q(:,:,3),w3);
x=q;
end