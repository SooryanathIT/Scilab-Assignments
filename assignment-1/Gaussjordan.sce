Augmented =zeros(3,6);
//3x4 matrix
for(i=1:3)
    for(j=1:3)
        disp("Enter element",j,i);//cellwise input
        Augmented(i,j)=(input(" "));
    end
 end
 Augmented(1,4)=1;
 Augmented(2,5)=1;
 Augmented(3,6)=1;
 flag=0;
 disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
 disp("The augmented matrix is ");
 A=Augmented(1:3,1:3);
 disp(Augmented);
 disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
  //forward elimination
  function [flag,Augmented]= Gaussian(Augmented)
 
       for(i=1:3)
           disp(i,'iter');
           disp(flag,'FLAG VALUE IS ==');
        if(Augmented(i,i)==0) then
            if( i+1<4 & Augmented(i+1,i)~=0  ) then
                Augmented([i,i+1],:)=Augmented([i+1,i],:);
            
            elseif(i+2<4 & Augmented(i+2,i)~=0 ) then
                 Augmented([i,i+2],:)=Augmented([i+2,i],:);
            end
        end
        if(Augmented(i,i)==0) then
            //disp('SINGULAR CASE , NON INVERTIBLE');
            disp('IM here');
            flag=1;
            break;
        end
        for(j=i+1:3)
            
                Augmented(j,:)=Augmented(j,:)-(Augmented(j,i)/Augmented(i,i))*Augmented(i,:);
                disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
                disp(Augmented);
        end
        
      end
 endfunction
[flag,Augmented]=Gaussian(Augmented);
if(flag==1)
    disp('NON INVERTIBLE');
else
    for(n=1:3)
          Augmented(n,:)=(1/Augmented(n,n))*Augmented(n,:);
           disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
                disp(Augmented);
       end
      for(last=3:-1:2)
          for(back=last-1:-1:1)
              Augmented(back,:)=Augmented(back,:)-(Augmented(back,last)/Augmented(last,last))*Augmented(last,:);
               disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
                disp(Augmented);
            end
       end
       disp('The inverse is ');
INV=Augmented(1:3,4:6);
disp(INV);
 
end



//backward subs

         

