clc()
funcprot(0)
disp('*****************************************************************')
disp('GRAM SCHMIDT ORTOGONALIZATION')
disp('ENTER 3 INDEPENDENT VECTORS ')
A=eye(3,3)
for(columns=1:3)
   printf("ENTER VECTOR #%d",columns)
    for(rows=1:3)
        A(rows,columns)=input('.')
    end
end
disp("THE MATRIX OF INDEPENDENT VECTORS IS")
disp(A)
Orthogonal=eye(3,3)
function orthogonalize(A,Orthogonal)
    for(vector=1:3)
        k=vector-1
        temp=[0;0;0]
        if(vector==1)
            Orthogonal(:,vector)=A(:,vector)/(sqrt(A(:,vector)'*A(:,vector)))
           
        else
            while(k~=0)
               temp = temp + A(:,vector)'*Orthogonal(:,k)*(Orthogonal(:,k))
              k=k-1
          end
          Orthogonal(:,vector)=A(:,vector)-temp
          Orthogonal(:,vector)=Orthogonal(:,vector)/norm(Orthogonal(:,vector)')
      end
  end
  
          
          
        
                 
endfunction
orthogonalize(A,Orthogonal)
disp('THE  ORTHOGONAL MATRIX OF ORTHONORMAL VECTORS IS ')

disp(Orthogonal)
param3d(Orthogonal(:,3),Orthogonal(:,1),Orthogonal(:,2))
disp('*****************************************************************')
