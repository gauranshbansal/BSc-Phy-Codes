clc;clear;clf();   //Hermite
a=-2;  b=2;  nmax=5;
n1=500;  g=n1-1;  h=(b-a)/n1;
y1=zeros(g,nmax+1); I=zeros(nmax+1,1);
x=linspace(a,b,g); plegend=[]
for n=0:nmax
    alpha=0;beeta=0; 
        for i=0:floor(n/2)
            alpha=alpha+((-1)^(i))*((2*a)^(n-2*i))/(factorial(i)*factorial(n-2*i));
        end
        alpha=alpha*factorial(n)
        beeta=((-1)^n)*alpha;
    for i=1:g
        p(i)=-2*x(i);
        q(i)=2*n;
        k(i)=2-h*p(i);
        m(i)=2*h*h*q(i)-4;
        l(i)=2+h*p(i);
        r(i)=0;
        B(i)=2*h*h*r(i);
    end
    A=zeros(g,g)+diag(m)+diag(l(1:g-1),1)+diag(k(2:g),-1)
    B(g)=B(g)-l(g)*beeta;
    B(1)=B(1)-k(1)*alpha;
    y=A\B;
    y1(:,n+1)=y(:,1);
    plegend(n+1)="H"+string(n)+"(x) (n = "+string(n)+")"
    for j=0:n
        I(n+1)=I(n+1)+4*exp(-(x(1:2:g).^2))*(y1(1:2:g,n+1).*y1(1:2:g,j+1));
        I(n+1)=I(n+1)+2*exp(-(x(2:2:g).^2))*(y1(2:2:g,n+1).*y1(2:2:g,j+1));
        I(n+1)=(h/3)*(I(n+1)+alpha+beeta);
        disp("Integration of H"+string(n)+"(x)*H"+string(j)+"(x) : "+string(I(n+1)))
        disp(sqrt(%pi)*factorial(n)*2^n)
    end
end
func=y1(1:g,1:nmax+1)
plot(x',func,style=1:nmax+1)
legend(plegend,4)
title("Solution of Hermite Differential equation for n = 0 to "+string(nmax))
xgrid()
