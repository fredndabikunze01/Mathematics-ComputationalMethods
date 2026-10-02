clc;
clear;

% Define the function
f = @(x) x.^2 + 1;

% Lower limit
a = 0;

% Upper limit
b = 2;

% Call the Gauss Quadrature function
integral = gauss_quadrature(f, a, b);

% Display the result
fprintf('Gauss Quadrature Rule\n');
fprintf('Approximate integral = %.6f\n', integral);