// Input data
x = [2 4 6 8 10];               // Independent variable
y = [4.077 11.084 30.128 81.817 222.62]; // Dependent variable

// Log-transform the dependent variable
yp = log(y);

// Calculating coefficients for linear regression (y = mx + c)
n = length(x);
sumx = sum(x);
sumx2 = sum(x .* x);
sumy = sum(yp);
sumxy = sum(x .* yp);

// Setting up and solving the system of equations
A = [sumx n; sumx2 sumx];       // Coefficient matrix
B = [sumy; sumxy];              // Constants vector
U = A \ B;                      // Solve for [m; c]
disp("Linear coefficients [b; log(a)]:")
disp(U);

B = U(1, 1);                    // Slope (b)
A = U(2, 1);                    // Intercept (log(a))

// Convert intercept to 'a' for exponential form
a = %e^A;                       // Base e exponentiation
b = B;                          // Coefficient for x
disp("Exponential coefficients:")
disp("a = " + string(a));
disp("b = " + string(b));

// Generate the fitted exponential curve
Y = a .* exp(b .* x);           // Compute fitted y values

// Plot original data and fitted curve
clf;
plot2d(x, Y, 5);                // Fitted curve
plot2d(x, y, -9);               // Original data points
xtitle("Plot of x vs y and Exponential Fit", "X", "Y");
xgrid(2);
legend(["Fitted Curve", "Original Data"]);
