clear
// Finitre Difference Method

// Define the differential equation and its initial conditions
a=0;b=2
alpha=1;beta=54.59815
// Define the number of intervals and step size
n=10  
h=(b-a)/n
//grid points
g=n-1 
//Defining Values based on grid points
for i=1:g
 x(i)=a+i*h
 yexact(i)=%e^(2*x(i))
 p(i)=-5
 q(i)=6
 r(i)=0
 k(i)=2-(h*p(i))
 m(i)=2*h*h*q(i)-4
 l(i)=2+h*p(i)
 B(i)=2*h*h*r(i)
end
if (n==2) then
y(i)=(B(i)-(k(i)*alpha)-(l(i)*beta))/m(i)

else
A=zeros(g,g)+diag(m)+diag(l(1:g-1),1)+diag(k(2:g),-1)
B(1)=B(1)-k(1)*alpha
B(g)=B(g)-l(g)*beta
y=A\B
end
disp([x y yexact])
//Plotting the graph
plot2d(x,y,3)
plot2d(x,yexact,-4)
xtitle("(d2y)/(dx^2)=6y-5dy/dx","x","f(x,y)")
xgrid(2)
