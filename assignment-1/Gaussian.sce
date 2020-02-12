Augmented =zeros(3,4);
//3x4 matrix
for(i=1:3)
    for(j=1:3)
        disp("Enter element",j,i);//cellwise input
        Augmented(i,j)=(input(" "));
    end
 end
 for(i=1:3)
     disp("enter b",1);
     Augmented(i,4)=(input(" "));
 end
 disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
 disp("The augmented matrix is ");
 A=Augmented(1:3,1:3);
 disp(Augmented);
 disp("-------------------------------------------------------------------------------------------------------------------------------------------------------------");
 //Augmenteds=[1,2,3,4;4,7,6,7;7,8,9,10];
 
 A=Augmented(1:3,1:3);
 //disp(det(A));
 //if(floor(det(A))==0) then
    // disp("SINGULAR CASE");
    
 
 //forward elimination
 //else
 function Gaussian(Augmented)
 
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
        if(Augmented(i,i)==0) then
            disp('SINGULAR CASE');break;
        end
        for(j=i+1:3)
            
                Augmented(j,:)=Augmented(j,:)-(Augmented(j,i)/Augmented(i,i))*Augmented(i,:);
                disp(Augmented);
        end
        
          end
      
        
        
 //end
 if(Augmented(3,3)~=0 & Augmented(2,2)~=0 &Augmented(1,1)~=0) then
 x=0;y=0;z=0;
 z=Augmented(3,3)\Augmented(3,4);
 y=(Augmented(2,4) - z*Augmented(2,3))/Augmented(2,2);
 x=(Augmented(1,4) - z*Augmented(1,3) -y*Augmented(1,2))/Augmented(1,1);
 sol=[x,y,z];
 disp(sol,"the solutions are x  y  z repectively ");
end
endfunction
Gaussian(Augmented);
 


//backward subs

         
