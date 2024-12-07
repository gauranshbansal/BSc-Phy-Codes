// Defining constants
tol = 0.00001;
err = 1;
k = 1;
//A = [2, 1, 1; 1, 3, 2; 3, 1, 4];
//A = [1, -%i, 3 + 4*%i; %i, 2, 4; 3 - 4*%i, 4, 3]
A=[2,-%i,2*%i;%i, 4, 3;-2*%i,3,5]
X0 = [1; 1; 1];
lambda0 = 1;

while err >= tol
    X = A * X0;
    lambda1 = max(abs(X));
    X0 = X / lambda1;
    err = abs(lambda1 - lambda0);
    lambda0 = lambda1;
    k = k + 1;
end

eigenvalue = lambda1;
eigenvector = X0/norm(X0);
disp(k)
disp("Dominant Eigenvalue:");
disp(eigenvalue);
disp("Dominant Eigenvector:");
disp(eigenvector);

[c,d]=spec(A)
disp(c)
disp(d)
