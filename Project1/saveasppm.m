function [  ] = saveasppm( y , filename , K )
 [M, N ,RGB]=size(y);
 FID=fopen(filename , 'w');
 fprintf(FID, 'P6');
 fprintf( FID, ' %d %d %d\n', N, M,K);
 if (K<255)
     for i=1:M
         for j=1:N
             fwrite(FID,[y(i,j,1),y(i,j,2),y(i,j,3)],'uint8','l');
         end
     end
 else
     for i=1:M
         for j=1:N
             fwrite(FID,[y(i,j,1),y(i,j,2),y(i,j,3)],'uint16','b');
             
         end
     end
 end
 fclose(FID);
end



