n=100
L=10
function I=simpson(a,b,n,f)
    h = (b-a)/n;
    x = a:h:b
    s = f(x(1)) + f(x(n+1));
    for i = 2:2:n
        s = s + 4*f(x(i));
    end
    for i = 3:2:n-1
        s = s + 2*f(x(i));
    end    
    I =(h/3)*s;
endfunction
function y = new1(x)
    y=-2
endfunction
I1=simpson(-10,0,n,new1)
function y = new2(x)
    y=2
endfunction
I2=simpson(0,10,n,new2)
A0=(1/L)*(I1+I2)
disp(A0)

//B1
function y=john1(x)
    y=(-2)*(sin((%pi*x)/L))
endfunction
function y=john2(x)
    y=(2)*(sin((%pi*x)/L))
endfunction
I3=simpson(-10,0,n,john1)
I4=simpson(0,10,n,john2)
B=(1/L)*(I3+I4)
disp(B)

//for all B
for j=1:40
   function y=john3(x)
   y=(-2)*(sin((%pi*x*j)/L))
   endfunction
   function y=john4(x)
   y=(2)*(sin((%pi*x*j)/L))
   endfunction
I5=simpson(-10,0,n,john3)
I6=simpson(0,10,n,john4)

B(j)=(1/L)*(I5+I6)
disp("B"+string(j)+"=",B(j))
end
sum=0
for j=1:2:35
    sum=sum+sin((j*%pi*x)/L)*B(j)
end

plot2d(x,sum,3)
xgrid(2)
    
