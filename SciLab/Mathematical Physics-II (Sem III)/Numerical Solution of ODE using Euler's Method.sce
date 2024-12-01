clear
function dy=f(x,y)
    dy=8-(3*y)
endfunction

x0=0;y0=2
xf=1;h=0.1

x(1)=x0
y(1)=y0
n=(xf-x0)/h

for i=1:n
    x(i+1)=x(i)+h 
    y(i+1)=y(i)+h*f(x(i),y(i))
end
z=[x,y]
disp(z)
clf
plot2d(x,y,-5)
yexact=(8-(2*(%e^(-3*x))))/3
plot2d(x,yexact,5)
error=yexact-y
z1=[x y yexact error]
disp(z1)
xgrid()
