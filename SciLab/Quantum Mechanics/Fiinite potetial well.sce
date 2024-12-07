hbar = 1973 // in evA
m = 0.511e6 // mass 
xmin = 0    // minimum x value for the well
xmax = 5    // maximum x value for the well
n = 1000    // number of grid points
x = linspace(xmin, xmax, n)
d = x(2) - x(1)
V = zeros(n, 1) // Potential energy, initialize as zero


V_barrier_height = 10.0   // Height of the barrier
V_barrier_width = 1.0    // Width of the barrier

for i = 1:n
    if (x(i) >= (xmax / 2 + V_barrier_width / 2) | x(i) <= (xmax / 2 - V_barrier_width / 2))
        V(i) = V_barrier_height // Inside the barrier
    else
        V(i) = 0 // Outside the barrier
    end
end

K = eye(n, n) * (-2)

for i = 1:(n - 1)
    K(i, i + 1) = 1
    K(i + 1, i) = 1
end

H = (-(hbar^2) / (2 * m * d^2)) * K + diag(V)
[U, EV] = spec(H)
E = diag(EV); // eigenvalues (possible energies)

// Plotting for the first n states wavefunction

for i=1:3
    //focus on the iteration of subplot here
    subplot(3,2,2*i-1)
    plot2d(x',U(:,i))
    xtitle("Graph for ψ("+string(i)+")")
    xgrid(2)
    
    subplot(3,2,2*i)
    //this is the part of normalisation of the eigenvector
    normal= sqrt((U(:,i).*conj(U(:,i))))
    //..till here
    plot2d(x',normal)
    xtitle("Graph for Normalized ψ("+string(i)+")")
    xgrid(2)
end


