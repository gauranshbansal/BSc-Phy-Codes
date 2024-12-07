n=2
m=2
result = integrate('((1 / (2^m * factorial(m))) * diff((x^2 - 1)^m, m))*((1 / (2^n * factorial(n))) * diff((x^2 - 1)^n, n))', 'x', -1,1)
