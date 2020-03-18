//best fine line
//using least squares method
disp("enter the values  of x and y , enter  ENTER to stop")
flag=1
t=eye(50,1)
b=eye(50,1)

i=1
count=0
while(%t)
    a=input(".")
    if(isempty(a))
        break
     end
    printf("|")
    b_val=input(" ")
    t(i,1)=a
    b(i,1)=b_val
    i=i+1
    count=count+1
end 
A=ones(count,2)
for(j=1:count)
    A(j,1)=1
    A(j,2)=t(j,1)
end

b=b([1:count],:)
disp("The matrix b is ")
disp(b)
disp("The matrix A is")
disp(A)
scatter(A([1:count],2),b,'x')
//least squares best fit line
x=inv(A'*A)*A'*b
disp(x)
printf("The eqn of the line is  b = %ft   +   %f\n",x(2,1),x(1,1));
v=0 : 0.1 : 10;
u=x(2,1)*v + x(1,1)
plot(v,u)

