function f=F(x)
    f=1/((x^2)+2)
endfunction
x=[0.585786 3.41421]
w=[0.853553 0.146447]

sum=0

for i=1:2
    sum=sum+w(i)*F(x(i))
end

disp(sum)
