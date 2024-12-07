scf
clc
clf()
clear
R=8.314
h=6.626e-34
K=1.38e-23
thetaD=345     //Einstein temperature
v=(K*thetaD/(h))   //frequency of harmonic oscillator

t=linspace(1,3000,1000)
function y=Cv1(t)
    y=3*R    //Dulong Petit law
endfunction
for i=1:1000
    Cv2(i)=3*R*(h*v/(K*t(i)))^2*(exp(h*v/(K*t(i)))/((exp(h*v/(K*t(i))))-1)^2)   //Einstein Law
end
plot(t,Cv1,'r--')
plot(t,Cv2,'b*')

t1=linspace(1,3000,1000)
    function y1=f(x)
    y1=(((x.^4)*(exp(x)))/((exp(x)-1).^2))                    //Debye
endfunction
i=1
for T=1:1:3000
z(i)=T
x(i)=(h*v)/(K*T)
y(i)=9*R*((T/thetaD).^3)*(intg(0,(thetaD/T),f))
i=i+1
end
plot(z,y,'g')
legend('Dulon Petit Law','Einstein Law','Debye Law')
title('C_v V/s T for Dulong Petit, Einstein and Debye Law','fontsize',5)
xlabel('Temperature(Kelvin)','fontsize',5)
ylabel('Specific Heat','fontsize',5)
xgrid()


//Different "Einstein temperature" and a "Different Temperature Range"
scf
clc
clf()
clear
R=8.314
h=6.626e-34
K=1.38e-23
thetaD=2100              //Einstein temperature
v=(K*thetaD/(h))
t=linspace(1,500,100)
function y=Cv1(t)
    y=3*R              //Dulong petit law
endfunction
for i=1:100
    Cv2(i)=3*R*((h*v/(K*t(i)))^2)*(exp(-(h*v/(K*t(i)))))          //Einstein Law
end
plot(t,Cv1,'r--')
plot(t,Cv2,'b*')
thetaD1=2100             //DEBYE temperature
T=linspace(1,500,100)
for i=1:100
    Cv(i)=(12/5)*(%pi).^4*R*(T(i)/thetaD1)^3
end
plot(T,Cv,'g')
legend('Dulon Petit Law','Einstein Law','Debye Law')
title('C_v V/s T for Dulong Petit, Einstein and Debye Law','fontsize',5)
xlabel('Temperature(Kelvin)','fontsize',5)
ylabel('Specific Heat','fontsize',5)
xgrid()
