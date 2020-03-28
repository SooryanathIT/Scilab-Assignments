//RAYLEIGH POWER METHOD
clc()
funcprot(0)
disp('*****************************************************************')
disp('RAYLEIGH POWER METHOD')

A=eye(3,3)
for(columns=1:3)
   printf("ENTER VECTOR #%d",columns)
    for(rows=1:3)
        A(rows,columns)=input('.')
    end
end
function  Rayleigh(A)
    //let x=column[1,1,1]
    x_old=[0;0;0]
    count=0
    x=[1;1;1]
    for(i=1:20)
       
        if(~isequal (x_old,x))
        x_old=x
       
        x=A*x
        eigenval=max(x)
        x=(1/eigenval)*x
       disp('###############')
       printf("%dth iteration",count+1)
        count=count+1
        disp("EIGEN VECTOR IS")
        disp(x)
        disp("EIGEN VALUE IS")
        disp(eigenval)
    else
        break
    end
    
end
disp('###############')
 printf("THE DOMINANT EIGEN VALUE IS \n%f\n",eigenval)
    
        
        
    
endfunction

Rayleigh(A)
