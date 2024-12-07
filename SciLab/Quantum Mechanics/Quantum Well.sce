// Parameters from the second code snippet
hbar = 1.05457182e-34;
m = 9.1093837e-31;
e = 1.60217663e-19;
xmin = 1e-10;
xmax = 10;
n = 1000;

// Define the differential equation and its initial conditions
a = xmin; b = xmax;
alpha = 0; beta = 0;

// Define the number of intervals and step size
h = (b - a) / (n - 1);  // n-1 grid points

// Grid points
g = n-1;
x = zeros(1, g);  // Initialize x array
y = zeros(1, g);  // Initialize y array (solution)

// Defining Values based on grid points
for i = 1:g
    x(i) = a + (i - 1) * h;
end

V = zeros(g, g);
for i = 1:g
    V(i, i) = (-(e^2) / x(i));
end

K = diag(ones(1, g - 1), -1) + diag(ones(1, g - 1), 1) - 2 * eye(g);

H = (-(hbar^2) / (2 * m * h^2)) * K + V;

// Solve the eigenvalue problem
[V, E] = spec(H);
values=diag(E)
// Plotting for the first 10 columns of V
columns_to_plot = 5;
plegend = [];
for i = 1:columns_to_plot
    plegend(i) = string(i) + "th Excited State";
end

to_plot = V(:, 2:columns_to_plot + 1);

plot2d(x', to_plot, style = 1:6);
xgrid(2);
legend(plegend);
xlabel('x');
ylabel('Wavefunction');
