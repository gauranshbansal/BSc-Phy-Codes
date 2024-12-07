h=197.3
m=940
D=0.755501
G=1.44
q=3.795
r0=0.131349e-10
rm=10
N=1000
r=linspace(r0,rm,N);
d=r(2)-r(1)

// generate matrix A
A=zeros(N,N);
A(1,[1:2])=[-2,1]
A(N,[N-1:N])=[1,-2];
for i=2:N-1
    A(i,[i-1:i+1])=[1,-2,1]
end
V=zeros(N,N)
for i=1:N
    r1(i)=(r(i)-r0)/r(i)
    V(i,i)=D*(exp(-2*G*r1(i))-exp(-G*r1(i)))
end

H=(-h^2/(2*m*d^2))*A+V
[R,diagevals]=spec(H)
w=find(diagevals>0.0)
disp("Ground state energy is")
disp(diagevals(w(1)))
r2=r/G
R(1,:)=R(:,1)
plot(r2,(R(1,:)),'blue');
xlabel('Radial distance r in Angstrom');
ylabel('Wavefunction')
title("Anharmonic Oscillator")
xgrid(1)
