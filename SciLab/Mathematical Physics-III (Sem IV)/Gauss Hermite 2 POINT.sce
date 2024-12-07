function f=F(x)
   f=(sqrt(2)*sigma*x+5)/sqrt(%pi)
endfunction
sigma=20
w=[0.886227 0.886227]
x=[-1/sqrt(2) 1/sqrt(2)]
sum=0
for i=1:2
    sum=sum+w(i)*F(x(i))
end
disp(sum)
