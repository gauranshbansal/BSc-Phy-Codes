// Define the Bessel function Jn(x) using a series expansion
function jn = j(n, x)
    sum = 0;
    for m = 0:30
        denom = factorial(m) * factorial(n + m); // Factorials for the series expansion
        sum = sum + ((-1)^m) * ((x / 2)^(n + 2 * m)) / denom;
    end
    jn = sum; // Return the computed Bessel function value
endfunction

// Clear the console and graphics
clc;
clf;

// Define the range of x
x = -1:0.1:1;

// Plot Jn(x) for n = 0 to 5
for n = 0:5
    subplot(2, 3, n + 1);              // Create a subplot (2 rows, 3 columns)
    y = zeros(1, length(x));           // Preallocate y for efficiency
    for i = 1:length(x)
        y(i) = j(n, x(i));             // Compute Jn(x) for each value of x
    end
    plot2d(x, y, n + 1);               // Plot the function
    xgrid(2);                          // Add grid lines
    xtitle("Plot of J" + string(n) + "(x) v/s x", "x", "Jn(x)"); // Set title and labels
    legend(["J" + string(n) + "(x)"]); // Add legend
end
