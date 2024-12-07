function f=F(x)
   f=(sqrt(2)*sigma*x+5)/sqrt(%pi)
endfunction
sigma=1
w=[0.0813128 0.804914 0.804914 0.0813128]
x=[-1.65068 -0.524648 0.524648 1.65068]
sum=0
for i=1:4
    sum=sum+w(i)*F(x(i))
end
disp(sum)
