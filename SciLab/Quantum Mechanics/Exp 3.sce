clc
clf()
// Parameters
hbar = 197.3 //in Mev
m = 940;
q = 3.795
k=100
xmin = 1e-10;
xmax = 10;
n = 1000;
x = linspace(xmin, xmax, n)
d = x(2) - x(1)
b1=0
b2=10
b3=30

V1=zeros(n,n)
for i = 1:n
    V1(i, i) = (0.5*k*(x(i)^2))+(b1*(x(i)^3)/3)
end

V2=zeros(n,n)
for i = 1:n
    V2(i, i) = (0.5*k*(x(i)^2))+(b2*(x(i)^3)/3)
end
V3=zeros(n,n)
for i = 1:n
    V3(i, i) = (0.5*k*(x(i)^2))+(b3*(x(i)^3)/3)
end
K = eye(n, n) * (-2)

for i = 1:(n - 1)
    K(i, i + 1) = 1
    K(i + 1, i) = 1
end

H1 = (-(hbar^2) / (2 * m * d^2)) * K + V1
H2 = (-(hbar^2) / (2 * m * d^2)) * K + V2
H3 = (-(hbar^2) / (2 * m * d^2)) * K + V3
[U1, EV1] = spec(H1)
[U2, EV2] = spec(H2)
[U3, EV3] = spec(H3)
E1 = diag(EV1) //eigenvalues(possible energies)
E2 = diag(EV2)
E3 = diag(EV3)
disp(E1(1),E2(1),E3(1))

// Plotting for the first n states owavefunction 
columns_to_plot = 1
plegend = []
plegend(1)='Ground state'
for i = 3:columns_to_plot + 1
    plegend(i - 1) = string(i-2) + "th Excited State"
end

to_plot = U1(:,1)
subplot(3,1,1)
plot2d(x', to_plot, style = 1:6)
xgrid(2)
legend(plegend)
xlabel('x')
ylabel('Wavefunction')

to_plot = U2(:,1)
subplot(3,1,2)
plot2d(x', to_plot, style = 1:6)
xgrid(2)
legend(plegend)
xlabel('x')
ylabel('Wavefunction')

to_plot = U3(:,1)
subplot(3,1,3)
plot2d(x', to_plot, style = 1:6)
xgrid(2)

legend(plegend)
xlabel('x')
ylabel('Wavefunction')


