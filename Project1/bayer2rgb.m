function [xc] = bayer2rgb(xb,M,N,type)


[Mo No] = size(xb); 
stepj=floor(Mo/M);
stepi=floor(No/N);
xc=zeros(M,N); 

for i=0:2:M-1
    a=stepi*i; 
    for j=0:2:N-1
         b=stepj*j;
         xc(i+1,j+1)=xb(a+1,b+1);
         xc(i+1,j+2)=xb(a+1,b+2);
         xc(i+2,j+1)=xb(a+2,b+1);
         xc(i+2,j+2)=xb(a+2,b+2);
     end
end

G=xc.*repmat([1 0;0 1],M/2, N/2);
B=xc.*repmat([0 1;0 0],M/2, N/2);
R=xc.*repmat([0 0;1 0],M/2, N/2);

if type=='nearest'
    for i=0:2:M-1 
        for j=0:2:N-1
         G(i+1,j+2)=G(i+1,j+1);
         G(i+2,j+1)=G(i+2,j+2);
         B(i+1,j+1)=B(i+1,j+2);
         B(i+2,j+1)=B(i+1,j+2);
         B(i+2,j+2)=B(i+1,j+2);
         R(i+1,j+1)=R(i+2,j+1);
         R(i+1,j+2)=R(i+2,j+1);
         R(i+2,j+2)=R(i+2,j+1);
        end
    end
else
    G(M,1)=G(M-1,1)/2+G(M,2)/2;
    G(1,N)=G(1,N-1)/2+G(2,N)/2;
    for j=2:2:N-1
        G(1,j)=G(2,j)/3+G(1,j-1)/3+G(1,j+1)/3;
        G(M,j+1)=G(M,j)/3+G(M,j+2)/3+G(M-1,j+1)/3;
        B(M-1,j+1)=B(M-1,j)/2+B(M-1,j+2)/2;
        R(M,j)=R(M,j-1)/2+R(M,j+1)/2;
    end
    for i=2:2:M-1
        B(i,N)=B(i-1,N)/2+B(i+1,N)/2;
        R(i+1,N-1)=R(i,N-1)/2+R(i+2,N-1)/2;
    end    
    for i=2:2:M-1
        G(i,1)=G(i-1,j-1)/3+G(i,j)/3+G(i+2,j)/3;
        for j=2:2:N-1
         G(i,j+1)=G(i,j)/4+G(i-1,j+1)/4+G(i,j+2)/4+G(i+1,j+1)/4;
         G(i+1,j)=G(i,j)/4+G(i+1,j-1)/4+G(i+2,j)/4+G(i+1,j+1)/4;
         B(i,j)=B(i-1,j)/2+B(i+1,j)/2;
         B(i-1,j+1)=B(i-1,j)/2+B(i-1,j+2)/2;
         R(i,j)=R(i,j-1)/2+R(i,j+1);
         R(i+1,j-1)=R(i+2,j-1)/2+R(i,j-1)/2;
        end
    end
    B(:,1)=B(:,2);
    B(M,:)=B(M-1,:);
    R(1,:)=R(2,:);
    R(:,N)=R(:,N-1);
    for i=2:2:M-1
        for j=3:2:N-1
            B(i,j)=B(i-1,j)/4+B(i+1,j)/4+B(i,j-1)/4+B(i,j+1)/4;
            R(i+1,j-1)=R(i,j-1)/4+R(i+2,j-1)/4+R(i+1,j-2)/4+R(i+1,j)/4; 
        end
        
    end
end
xc=cat(3,R,G,B);
end

    