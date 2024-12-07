clc; clf
h=6.626e-34
k=1.38e-23 
c=3e8
t=[1000,1200,1400]
n=2000
r=linspace(0.1e-6,15e-6,n) 
//r0=linspace(5e-6,15e-6,n) 
for i=1:n
    for j=1:3 
        plan(j,i)=(2*h*c^2)/((r(i))^5*(exp(h*c/(r(i)*k*t(j)))-1))
//        plan(j,i)=(8*%pi*h*c)/((r(i))^5*(exp(h*c/(r(i)*k*t(j)))-1))
        jean(j,i)=(2*c*k*t(j))/(r0(i))^4 
//        jean(j,i)=(8*%pi*k*t(j))/(r0(i))^4 
        wien(j,i)=(2*h*c^2)/((r(i))^5*(exp(h*c/(r(i)*k*t(j)))))
//        wien(j,i)=(8*%pi*h*c)/((r(i))^5*(exp(h*c/(r(i)*k*t(j)))))
    end
end
subplot(2,2,1)
plot(r,plan(1,:),'r')
plot(r,plan(2,:),'g')
plot(r,plan(3,:),'b') 
xtitle("Plancks law","Wavelength--->","Energy--->")
legend("T1=1000","T2=1200","T3=1400") 
xgrid

subplot(2,2,2)
plot(r,jean(1,:),'r')
plot(r,jean(2,:),'g')
plot(r,jean(3,:),'b') 
xtitle("Rayleigh law","Wavelength--->","Energy--->") 
legend("T1=1000","T2=1200","T3=1400") 
xstring(1e-6,1.25e10,"<--UV Catastrophe")
xgrid

subplot(2,2,3)
plot(r,wien(1,:),'r')
plot(r,wien(2,:),'g')
plot(r,wien(3,:),'b') 
xtitle("Wiens Approximation","Wavelength--->","Energy--->") 
legend("T1=1000","T2=1200","T3=1400") 
xgrid

//subplot(2,2,3) 
//plot(r,u(3,:),'b') 
//plot(r0,m(3,:),'g')
//xtitle("Comparison b/w Planks and Rayleigh law","Wavelength--->","Energy--->")
//legend("(PLANKS)","(RAYLEIGH)") 
//xstring(1.2e-05,500,"T=1200 K")
//xgrid

subplot(2,2,4)
plot(r,plan(3,:),'r')
plot(r,jean(3,:),'g--')
plot(r,wien(3,:),'b--')
xtitle("Comparison b/w Planks,Rayleigh law and Wiens law ","Wavelength--->","Energy--->") 
legend("Planks","Rayleigh jeans","Weins") 
xstring(1.2e-05,400,"T=1200 K")
xgrid
