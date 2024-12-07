//Gauransh 21hph2625
clc;
clf;
clear;
k = 1.38e-23;
N=6e23
v=1e-10:1:1000
T = 273:150:573;
//name=input("Enter name of gas: ","string")
name='Oxygen'
//M=input("Enter molar mass of Gas in (g/mol): ")
M=16
m=M/(N*1000) //molecular weight in kg
//sp=input("At what temperature? ")
sp=300
for i=1:length(T)
    a=m/(2*k*T(i))
    a1=m/(2*k*sp)
    for j=1:length(v)
        f(j,i)=(4*%pi)*((a/%pi)^(3/2))*(v(j)^2)*exp(-a*v(j)^2)
        f2(j)=(4*%pi)*((a1/%pi)^(3/2))*(v(j)^2)*exp(-a1*v(j)^2)
    end
end

yn=linspace(0,max(f2),10)
xn1=sqrt(2*k*sp/m).*ones(1,10)
xn2=sqrt(8*k*sp/(%pi*m)).*ones(1,10)
xn3=sqrt(3*k*sp/m).*ones(1,10)
subplot(2,1,1)
plot(v',f','linewidth',3)
xgrid()
title('Maxwell Distribution of '+string(name)+' with Speed for Different Temperatures','fontsize',4)
xlabel('Temperature(K)','fontsize',3);
ylabel('f(v)','fontsize',3);
legend('T='+string(T(1)),'T='+string(T(2)),'T='+string(T(3)))

subplot(2,1,2)
title('Maxwell Distribution of '+string(name)+' for '+string(sp)+'K Temperature','fontsize',4)
plot(v',f2','linewidth',3)
xlabel('Temperature(K)','fontsize',3);
ylabel('f(v)','fontsize',3);
plot(xn1',yn','g--')
plot(xn2',yn','bo-')
plot(xn3',yn','r+-')
legend('T= '+string(sp),'Most Probable','Average','RMS')
xgrid()
