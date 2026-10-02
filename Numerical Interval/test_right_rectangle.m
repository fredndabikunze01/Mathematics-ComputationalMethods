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

% Call the right rectangle function
integral = right_rectangle(f, a, b, n);

% Display the result
fprintf('Right Rectangular Rule\n');
fprintf('Approximate integral = %.6f\n', integral);