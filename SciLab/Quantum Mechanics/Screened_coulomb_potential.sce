clc;
clf()
h=1973
m=5.11e5
q=3.795
x0=1e-16
xm=10
N=1000
x=linspace(x0,xm,N)
d=x(2)-x(1)
A=zeros(N,N)
A(1,[1:2])=[-2,1]
A(N,[N-1:N])=[1,-2]
for i=2:N-1
    A(i,[i-1:i+1])=[1,-2,1]
end
V1=zeros(N,N)
for i=1:N
    V1(i,i)=((q^2)*(exp(-x(i)/3))/x(i))
end
V2=zeros(N,N)
for i=1:N
    V2(i,i)=((q^2)*(exp(-x(i)/5))/x(i))
end
V3=zeros(N,N)
for i=1:N
    V3(i,i)=((q^2)*(exp(-x(i)/7))/x(i))
end

H1=(-h^2/(2*m*d^2))*A-V1
H2=(-h^2/(2*m*d^2))*A-V2
H3=(-h^2/(2*m*d^2))*A-V3
[R1,diagevals1]=spec(H1)
[R2,diagevals2]=spec(H2)
[R3,diagevals3]=spec(H3)

w1=find(diagevals1<0.0)
disp("ground state energy for a=3 angstorm is")
disp(diagevals1(w1(2)))
w2=find(diagevals2<0.0)
disp("ground state energy for a=5 angstorm is")
disp(diagevals2(w2(2)))
w3=find(diagevals3<0.0)
disp("ground state energy for a=5 angstorm is")
disp(diagevals3(w3(2)))
