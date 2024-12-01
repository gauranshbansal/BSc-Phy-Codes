clear
a=[10 1 2 3; 1 6 2 1; 2 1 5 1;2 1 13 11]
b=[16;18;21;25]
[r,c]=size(a)
x=zeros(r,1)
disp(x')
for k=1:20
    for i=1:r
        sum=0
        for j=1:r
            if(i<>j) then 
                sum=(sum+a(i,j)*x(j))
            end
        end
        x(i)=(b(i)-sum)/a(i,i)
    end
    disp(x')
   
end
disp(a*x)
