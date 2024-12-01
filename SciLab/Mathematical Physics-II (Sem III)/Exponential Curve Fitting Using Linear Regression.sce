clf
x=[2 4 6 8 10]
y=[4.077 11.084 30.128 81.817 222.62]
yp=log(y)
//Calculating A and B to put in Y=Bx+A
n=length(x)
sumx=sum(x)
sumx2=sum(x.*x)
sumy=sum(yp)
sumxy=sum(x.*yp)
M=[sumx n;sumx2 sumx]
N=[sumy;sumxy]
U=inv(M)*N
disp(U)
//Plotting the result
B=U(1,1)
A=U(2,1)

X=0:2:10


a=(%e)^A
b=B
disp(a)
disp(b)
Y=a.*(%e)^(b.*X)
plot2d(X,Y,6)
plot2d(x,y,-9)
xtitle("Plot of x v/s y","X","Y")
xgrid(2)

