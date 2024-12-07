clc
for a = 3:2:7
    // Parameters
    hbar = 1973 // in evA
    m = 0.511e6;
    e = 3.795;
    xmin = 1e-10;
    xmax = 10;
    n = 1000;
    x = linspace(xmin, xmax, n);
    d = x(2) - x(1);
    V = zeros(n, 1); // Modify this to be a column vector

    for i = 1:n
        V(i) = (-(e^2) / x(i)) * exp(-x(i) / a); // Use 'exp' for exponential

    end

    K = eye(n, n) * (-2);

    for i = 1:(n - 1)
        K(i, i + 1) = 1;
        K(i + 1, i) = 1;
    end

    H = (-(hbar^2) / (2 * m * d^2)) * K + diag(V); // Use 'diag' for diagonal matrix

    [U, EV] = spec(H);
    E = diag(EV); // Eigenvalues (possible energies)
    disp("for a = "+string(a))
    disp(E(2), E(3), E(4));

    // Plotting for the first n states wavefunction
    columns_to_plot = 4;
    plegend(1) = 'Ground State';
    for i = 3:columns_to_plot + 1
        plegend(i - 1) = string(i - 2) + " Excited State";
    end

    to_plot = U(:, 2:columns_to_plot + 1);
    subplot(3, 1, (a - 1) / 2);
    plot2d(x, to_plot, style = 1:6);
    xgrid(2);
    legend(plegend);
    xlabel('x for ' + string(a) + ' angstrom');
    ylabel('Wavefunction');
end
