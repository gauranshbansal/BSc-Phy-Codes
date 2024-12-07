//funcprot(0)
function y = f(x,sigma)
    y =  1/(sqrt(2*%pi*sigma*sigma))*((exp(-((x-2)^2)/(2*(sigma^2)))*(x+3)))
endfunction

    a = -10; // Lower limit of integration
    b = 10; // Upper limit of integration
    n = 10000; // Number of intervals
    sigma=0.01; //sigma
    
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
    disp(I);



    
