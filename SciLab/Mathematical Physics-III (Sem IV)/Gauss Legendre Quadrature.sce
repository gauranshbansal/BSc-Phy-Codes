clf
function f=F(x)
    f=(((3+x)^4)+1)
endfunction
sums=2
w=[1 1]
x=[1/sqrt(3) -1/sqrt(3)]
sum=0
for i=1:2
    sum=sum+w(i)*F(x(i))
end
disp(sum)
