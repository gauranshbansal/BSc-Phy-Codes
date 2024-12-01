# Scilab Code Collection

This folder contains various Scilab scripts designed for solving numerical problems and performing data analysis. Below is an overview of the key functionalities covered in each script:

### Gauss Elimination Method
   - Solves a system of linear equations using the Gauss Elimination method.
   - Performs row reduction to bring the system to upper triangular form and then back-substitutes to find the solution.

### Gauss-Seidel Method
   - Implements the **Gauss-Seidel iterative method** to solve a system of linear equations.
   - Repeatedly updates the solution vector until convergence.

### Polynomial Curve Fitting
   - **Cubic Polynomial Fit**: Fits a cubic polynomial \( y = ax^3 + bx^2 + cx + d \) to the given data using least squares regression.
   - **Quadratic Polynomial Fit**: Fits a quadratic polynomial \( y = ax^2 + bx + c \) to the given data.

### Exponential Curve Fitting (Log-Linear Regression)
   - Uses logarithmic transformation to fit an exponential model \( y = ae^{bx} \) to the data.
   - Transforms the data by taking the natural logarithm of \(x\) and \(y\), then performs linear regression on the transformed data.
   - The model is then used to predict the values, and both the fitted curve and the original data are plotted.

### Linear System Solvers
   - **Left Division**: Solves a system of linear equations \(Ax = B\) using Scilab's efficient left division operator (`A\B`).
   - **Matrix Inversion**: Solves the system by explicitly calculating the inverse of matrix \(A\) and multiplying it by vector \(B\), though this method is less efficient than left division.

### Runge-Kutta Method
   - Implements the **Runge-Kutta method** for solving ordinary differential equations (ODEs).
   - Uses a second-order approximation to iteratively compute the solution for a given initial value problem.
script implements the **least squares method** for linear regression, which fits a straight line \( y = mx + c \) to a set of data points. It calculates the best-fitting slope and intercept, and plots the resulting line along with the data.

## Requirements
- **Scilab**: The scripts require Scilab to run. You can download it from the official website: [Scilab.org](https://www.scilab.org/).

## How to Use
1. Install **Scilab** on your machine.
2. Open Scilab and navigate to the directory where the scripts are saved.
3. Run any script by typing its name in the Scilab command window.

## License
This code is released under the **MIT License**. Feel free to use, modify, and distribute the code, but include this copyright notice in any derivative works.
