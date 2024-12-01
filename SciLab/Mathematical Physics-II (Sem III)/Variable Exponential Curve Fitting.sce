clf
x=[2 4 7 10 20 40 60 80]
xp=log(x)
y=[43 25 18 13 8 5 3 2]
yp=log(y)
//Calculating A and B to put in Y=Bx+A
n=length(xp)
sumx=sum(xp)
sumx2=sum(xp.*xp)
sumy=sum(yp)
sumxy=sum(xp.*yp)
M=[sumx n;sumx2 sumx]
N=[sumy;sumxy]
U=inv(M)*N
disp(U)
//Plotting the result
B=U(1,1)
A=U(2,1)


a=(%e)^A
b=B
disp(a)
disp(b)
Y=a.*(x^b)
plot2d(x,Y,6)
plot2d(x,y,-9)
xtitle("Plot of x v/s y","X","Y")
xgrid(2)

