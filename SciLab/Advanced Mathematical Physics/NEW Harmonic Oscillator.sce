clc
hbar = 1973
m = 0.511e6
e = 3.795
xmin = -10
xmax = 10
n = 100
x = linspace(xmin, xmax, n)
d = x(2) - x(1)
V=zeros(n,n)

k = 1
for i = 1:n
   V(i,i)= (1/2)*k  *(x(i)^2)
end

K = eye(n, n) * (-2)

for i = 1:(n - 1)
    K(i, i + 1) = 1
    K(i + 1, i) = 1
end

H = (-(hbar^2) / (2 * m * d^2)) * K + V
[U, EV] = spec(H)
E = diag(EV) //eigenvalues(possible energies)
disp(E(1),E(2), E(3))
// Plotting for the first n states owavefunction 
z = 1.4
plot(x,[U(:,1)+z, U(:,2)+2*z, U(:,3)+3*z, U(:,4)+4*z],style=3:5)
legend("Ground State", "1st Excited State", "2nd Excited State", "3rd Excited State")
xgrid();
plot(x,(1/2)*k*x^2/10)
xlabel('x')
ylabel('Wavefunction')
