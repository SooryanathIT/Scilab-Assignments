//assignment-1
//span of a 3x3 matrix
Augmented=zeros(3,3)
for(i=1:3)
    disp(1,"enter the vector")
    for(j=1:3)
        Augmented(j,i)=input(".")
    end
end
A=Augmented
disp(Augmented)
disp('><><><><><><><><><><><><>><><><><><><><><><><><><>><><><><><><><><><><><><>><><><><><><><><><><><><>><><><><><><><><><><><><><')
function[res,Augmented]=pivot(Augmented,i,j)
     if(Augmented(i,j)==0) then
            if( i+1<4 & Augmented(i+1,j)~=0  ) then
                Augmented([i,j+1],:)=Augmented([i+1,j],:);
            
            elseif(i+2<4 & Augmented(i+2,j)~=0 ) then
                 Augmented([i,j+2],:)=Augmented([i+2,j],:);
            end
      end
        if(Augmented(i,j)==0) then
            res=0
        else
            res=1
        end
        
endfunction
funcprot(0)
function[Augmented]  = reduce(Augmented,i,k)
    factor=Augmented(i,k)
    for(j=i+1:3)
            
                
                Augmented(j,:)=Augmented(j,:)-(Augmented(j,k)/factor)*Augmented(i,:);
                
       end
endfunction
funcprot(0)
for(row=1:3)
    for(col=1:3)
        [res,Augmented]=pivot(Augmented,row,col)
        if(res==1)
            //call reduction foo
            Augmented=reduce(Augmented,row,col)
            Augmented=clean(Augmented)
            if((Augmented(row,col))~=0)
            disp(A(:,col))
            break
         else
             continue
         end
     end
     end
     
         
end
disp('The above vectors span the matrix A as they produce pivots')
disp('The Echelon form of Given Matrix is ')
disp((Augmented))
funcprot(0)
