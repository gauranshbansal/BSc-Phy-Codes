//Gauss Elimination Method
clear
a=[1 1 1;1 2 3;2 3 4]
b=[2;5;4]
a1=a
b1=b
//Displaying the matrix together
disp([a b])
//Reducing the matrix
for i=1:2
    z1=a(i,i)
    a(i,:)=(a(i,:))/z1
    b(i)=b(i)/z1
    for j=i+1:3
        z2=a(j,i)
        a(j,:)=a(j,:)-z2*a(i,:)
        b(j)=b(j)-z2*b(i)
    end
    disp([a b])
end
x(3)=b(3)/a(3,3)
for i=2:-1:1
    sum=0
    for j=i+1:3
        sum=sum+a(i,j)*x(j)
    end
    x(i)=(b(i)-sum)/a(i,i)
end
disp(x)
disp([a*x b])

