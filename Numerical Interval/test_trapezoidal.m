clc;
clear;

% Define the function
f = @(x) x.^2 + 1;

% Lower limit
a = 0;

% Upper limit
b = 2;

% Number of subintervals
n = 4;

% Call the trapezoidal function
integral = trapezoidal(f, a, b, n);

% Display the result
fprintf('Trapezoidal Rule\n');
fprintf('Approximate integral = %.6f\n', integral);