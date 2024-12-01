clf
x=[0 1 2 3 4]
y=[ 1 0 3 10 21]
plot2d(x,y,-4)
xgrid(2)
xtitle("x v/s y","X","Y")

//Finding Sums
n=length(x)
xsum=sum(x)
x2sum=sum(x.*x)
x3sum=sum(x.*x.*x)
x4sum=sum(x.*x.*x.*x)
ysum=sum(y)
xysum=sum(x.*y)
x2ysum=sum(x.*x.*y)

//Making Equations
A=[n xsum x2sum; xsum x2sum x3sum; x2sum x3sum x4sum]
B=[ysum;xysum;x2ysum]
X=inv(A)*B

a=X(1,1)
b=X(2,1)
c=X(3,1)

disp(a)
disp(b)
disp(c)

Y=a+(b.*x)+(c.*(x.*x))
plot2d(0:4,Y,5)
