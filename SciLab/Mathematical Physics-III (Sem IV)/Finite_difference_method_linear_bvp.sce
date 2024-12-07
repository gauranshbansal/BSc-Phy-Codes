// Finitre Difference Method

// Define the differential equation and its initial conditions
//y"=y'
a=0;b=2
alpha=0;beta=3.62686

// Define the number of intervals and step size
n=4
h=(b-a)/n

//Defining Values based on grid points
for i=1:n-1
 x(i)=a+i*h
 yexact(i)=sinh(x(i))
 p(i)=0
 q(i)=-1
 r(i)=0
 k(i)=2-(h*p(i))
 m(i)=2*h*h*q(i)-4
 l(i)=2+h*p(i)
 B(i)=2*h*h*r(i)
end
if (n==2) then
y(i)=(B(i)-(k(i)*alpha)-(l(i)*beta))/m(i)

elseif(n==3) then
A=[m(1) l(1);k(2) m(2)]
B=[ B(1)-k(1)*alpha;B(2)-l(2)*beta]
y=A\B

elseif(n==4) then
A=[m(1) l(1) 0;k(2) m(2) l(2);0 k(3) m(3)]
B=[B(1)-k(1)*alpha;B(2);B(3)-l(3)*beta]
y=A\B
end
disp([x y yexact])
