clear
for n=1:5
// Define the differential equation and its initial conditions
a = -1;  // Lower bound
b = 1;   // Upper bound

// Define the number of intervals and step size
intervals = 60;
h = (b - a) / intervals;
alpha=(-1)^n
beta=1
// Grid points
g = intervals-1;

// Defining Values based on grid points
for i = 1:g
    x(i) = a + i * h;
    p(i) = (-2 * x(i))/(1-x(i)^2);            // Define p(x)
    q(i) = (n * (n + 1))/(1-x(i)^2);        // Define q(x)
    r(i) = 0;            // Define r(x)
    k(i)=2-(h*p(i))
    m(i)=2*h*h*q(i)-4
    l(i)=2+h*p(i)
    B(i)=2*h*h*r(i)
end

    A = zeros(g, g) + diag(m) + diag(l(1:g-1), 1) + diag(k(2:g), -1)
    B(1)=B(1)-k(1)*alpha
    B(g)=B(g)-l(g)*beta
    y = A\B;

// Plotting the graph
//subplot(3,2,n)
plot2d(x, y, n)
xtitle("Legendre Polynomial","x","Pn(x)")
//xtitle("Legendre Polynomial of Degree " + string(n), "x", "Pn(x)")
xgrid(2)
end
