Augmented =zeros(3,3);
L=eye(3,3);

//3x4 matrix
for(i=1:3)
    for(j=1:3)
        disp("Enter element",j,i);//cellwise input
        Augmented(i,j)=(input(" "));
    end
 end
  disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
 disp("The augmented matrix is ");
 A=Augmented(1:3,1:3);
 disp(Augmented);
 disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
 A=Augmented(1:3,1:3);
 //forward elimination
  function LU(Augmented,L)
     for(i=1:3)
           disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
        //disp( i ,'iter');
        //disp(Augmented);
        //disp('iteration',i);
        if(Augmented(i,i)==0) then
            if( i+1<4 & Augmented(i+1,i)~=0  ) then
                Augmented([i,i+1],:)=Augmented([i+1,i],:);
            
            elseif(i+2<4 & Augmented(i+2,i)~=0 ) then
                 Augmented([i,i+2],:)=Augmented([i+2,i],:);
            end
        end
        if(Augmented(i,i)==0 & i~=3) then
            disp('SINGULAR');break;
        end
        for(j=i+1:3)
                L(j,i)=(Augmented(j,i)/Augmented(i,i));
                Augmented(j,:)=Augmented(j,:)-(Augmented(j,i)/Augmented(i,i))*Augmented(i,:);
                disp(Augmented);
        end
        
          end
  if( Augmented(2,2)~=0 &Augmented(1,1)~=0) then 
 disp("the L and U matrices are respectively ");
 disp(L);
 disp(Augmented);
end
endfunction 
LU(Augmented,L);

//backward subs

         
