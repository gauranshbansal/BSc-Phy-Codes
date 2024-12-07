// Parameters
hbar = 1973 //in evA
m = 0.511e6;
e = 3.795;
xmin = 1e-10;
xmax = 10;
n = 1000;
x = linspace(xmin, xmax, n)
d = x(2) - x(1)
V=zeros(n,n)
for i = 1:n
    V(i, i) = (-(e^2) / x(i))
end

K = eye(n, n) * (-2)

for i = 1:(n - 1)
    K(i, i + 1) = 1
    K(i + 1, i) = 1
end

H = (-(hbar^2) / (2 * m * d^2)) * K + V
[U, EV] = spec(H)
E = diag(EV) //eigenvalues(possible energies)
disp(E(2),E(3))
// Plotting for the first n states owavefunction 
columns_to_plot = 5
plegend = []
for i = 2:columns_to_plot + 1
    plegend(i - 1) = string(i - 1) + "th Excited State"
end

to_plot = U(:, 2:columns_to_plot + 1)

plot2d(x', to_plot, style = 1:6)
xgrid(2);
legend(plegend)
xlabel('x')
ylabel('Wavefunction')

