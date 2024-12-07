function f=F(x)
    f=1/((x^2)+2)
endfunction
x=[0.415775 2.29428 6.28995]
w=[0.711093 0.278518 0.0103893]

sum=0

for i=1:3
    sum=sum+w(i)*F(x(i))
end

disp(sum)
