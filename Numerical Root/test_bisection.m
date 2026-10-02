clc;
clear;

% Define the function
f = @(x) x^3 - x - 2;

% Initial interval
a = 1;
b = 2;

% Tolerance
tol = 0.000001;

% Maximum number of iterations
maxIter = 50;

% Call the bisection function
[root, iterations] = bisection(f, a, b, tol, maxIter);

% Display final result
fprintf('\nFinal Result:\n');
fprintf('Root = %.8f\n', root);
fprintf('Number of iterations = %d\n', iterations);
fprintf('f(root) = %.8f\n', f(root));