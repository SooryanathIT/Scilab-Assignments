A=eye(3,3)
clc()
disp('*****************************************************************')
disp('EIGEN VALUES AND EIGEN VECTORS')
for(columns=1:3)
   printf("ENTER COLUMN   #%d",columns)
    for(rows=1:3)
        A(rows,columns)=input('.')
    end
end
disp(A)
function  EIGEN(A)

        p=poly([-det(A),A(2,2)*A(3,3)-A(3,2)*A(2,3) + A(1,1)*A(3,3)-A(1,3)*A(3,1)+A(1,1)*A(2,2) - A(1,2)*A(2,1),-trace(A),1],'x','c')
            disp('THE CHARACTERISTIC  POLYNOMIAL IS')
            printf("λ³ %dλ²  %dλ  %d  = 0\n",-trace(A),A(2,2)*A(3,3)-A(3,2)*A(2,3) + A(1,1)*A(3,3)-A(1,3)*A(3,1)+A(1,1)*A(2,2) - A(1,2)*A(2,1),-det(A))
            disp('THE EIGEN VALUES ARE')
            disp(roots(p))
            eigenvalues=roots(p)
            disp('THE CORRESPONDING  EIGEN VECTORS ARE')
            for(lambda=1:3)
                     temp=A
                       for(i=1:3)
                        temp(i,i)=temp(i,i)-eigenvalues(lambda,1)
                        end
                    k=(kernel(temp))
                    disp(k)
            end
endfunction
EIGEN(A)
disp('*****************************************************************')
