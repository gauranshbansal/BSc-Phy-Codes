clear
a=[4 -1 1; 4 -8 1; -2 1 5]
b=[7;-21;15]

x=[0;0;0]
disp(x')
for k=1:30
    for i=1:3
        sum=0
        for j=1:3
            if(i<>j) then 
                sum=(sum+a(i,j)*x(j))
            end
        end
        x(i)=(b(i)-sum)/a(i,i)
    end
    disp(x')
   
         
end
