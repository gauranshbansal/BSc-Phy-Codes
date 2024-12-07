// Define the function to be integrated
function y = F(x)
y = ((3+x)^4)+1
endfunction

// Define the nodes and weights for Gauss-Legendre Quadrature 3 point
nodes = [-sqrt(3/5), 0, sqrt(3/5)]
weights = [5/9, 8/9, 5/9]

// Define the lower and upper limits of integration
a = 2
b = 4

// Perform the integration using Gauss-Legendre Quadrature 3 point
int = 0
for i = 1:3
int = int + weights(i)*F(nodes(i))
end

// Print the result of the integration
disp(int)
