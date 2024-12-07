funcprot(0);clc;
function y=H(n, x)
    y=0
    for r=0: floor(n/2)
        den=factorial(r)*factorial(n-2*r)
        y=y+((-1)^r*factorial(n)*(2*x)^(n-2*r))/den
    end
endfunction
x=poly(0,'x')
for i=3:5
    a=x*derivat(H(i,x))
    b=derivat(x*H(i,x))
    c=a-b
    disp("for n= "+string(i))
    disp("[x,p]="+'-i*h'+'('+string(c)+')')
end
