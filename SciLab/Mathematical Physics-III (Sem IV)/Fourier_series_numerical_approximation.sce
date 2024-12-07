
//Fourier
//funcprot(0)
//A0
    k=2
function y1 = f(x)
    y1 =-k
endfunction

function y2 = g(x)
    y2 =k
endfunction
    L=10
    a = -L; // Lower limit of integration
    c = 0;    //Middle Limit
    b = L; // Upper limit of integration
    n = 100; // Number of intervals

    h1 = (c-a)/n;
    x = a:h1:c
    s1 = f(x(1)) + f(x(n+1));
    for i = 2:2:n
        s1 = s1 + 4*f(x(i));
    end
    for i = 3:2:n-1
        s1 = s1 + 2*f(x(i));
    end
    
    I1 =(h1/3)*s1;
    i1 =1/L*I1
    disp(i1);

    h2 = (b-c)/n;
    x = c:h2:b
    s2 = g(x(1)) + g(x(n+1));
    for i = 2:2:n
        s2 = s2 + 4*g(x(i));
    end
    for i = 3:2:n-1
        s2 = s2 + 2*g(x(i));
    end
    
    I2 =(h2/3)*s2;
    i2 =1/L*I2
    disp(i2);

a0=i1+i2
                            disp(a0)
//defining the n in cos(npix) and sin(npix) as d

//An
function y3=h(x)
    sum=0
    for i=1:10
           y3=sum+((-k)*cos((i*%pi*x)/L))
    end
endfunction

    h3 = (c-a)/n;
    x = a:h3:c
    s3 = h(x(1)) + h(x(n+1));
    for i = 2:2:n
        s3 = s3 + 4*h(x(i));
    end
    for i = 3:2:n-1
        s3 = s3 + 2*h(x(i));
    end
    
    I3 =(h3/3)*s3;
    i3 =1/L*I3
    disp(i3);
    
function y4=m(x)
    sum=0
    for i=1:10
           y4=sum+((k)*cos((i*%pi*x)/L))
    end
endfunction

    h4 = (b-c)/n;
    x = a:h4:c
    s3 = m(x(1)) + m(x(n+1));
    for i = 2:2:n
        s3 = s3 + 4*m(x(i));
    end
    for i = 3:2:n-1
        s3 = s3 + 2*m(x(i));
    end
    
    I4 =(h4/3)*s3;
    i4 =1/L*I4
    disp(i4);
An=i3+i4
                        disp(An)

//Bn
for j=1:2:35
function y5=z(x)
     y5=((-k)*sin((j*%pi*x)/L))
endfunction

    h5 = (c-a)/n;
    x = a:h5:c
    s5 = z(x(1)) + z(x(n+1));
    for i = 2:2:n
        s5 = s5 + 4*z(x(i));
    end
    for i = 3:2:n-1
        s5 = s5 + 2*z(x(i));
    end
    
    I5 =(h5/3)*s5;
    i5 =1/L*I5
    
function y6=t(x)
        y6=((k)*sin((j*%pi*x)/L))
endfunction

    h6 = (b-c)/n;
    x = c:h6:b
    s6 = t(x(1)) + t(x(n+1));
    for i = 2:2:n
        s6 = s6 + 4*t(x(i));
    end
    for i = 3:2:n-1
        s6 = s6 + 2*t(x(i));
    end
    
    I6 =(h6/3)*s6;
    i6 =1/L*I6
    
B(j)=i5+i6
disp(B(j))
end
//Final asnwer
//Ans=a0+An+Bn
//disp(Ans)

x=1:2:100
sum=0
for i=1:2:35
    sum=sum+(B(i)*sin((i*%pi*x)/L))
end
y=sum

plot2d(x,y,3)
xgrid(4)
xtitle("Plot of x v/s f(x","x","f(x)")


