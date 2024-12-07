// Defining constants
tol = 0.0001;
err = 1;
k = 1;
A = [2, 1, 1; 1, 3, 2; 3, 1, 4]
B=inv(A)
X0 = [1; 1; 1];
lambda0 = 1;

while err >= tol
    X = B * X0;
    lambda1 = max(abs(X));
    X0 = X / lambda1;
    err = abs(lambda1 - lambda0);
    lambda0 = lambda1;
    k = k + 1;
end

eigenvalue = lambda1;
eigenvector = X0/norm(X0);
disp(k)
disp("Lambda Reciprocal:");
disp(1/lambda1);
disp("Dominant Eigenvector:");
disp(eigenvector);

//[c,d]=spec(B)
disp(c)
disp(d)

