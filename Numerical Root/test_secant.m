clc;
clear;

% Define the function
f = @(x) x^3 - x - 2;

% First initial guess
x0 = 1;

% Second initial guess
x1 = 2;

% Tolerance
tol = 0.000001;

% Maximum number of iterations
maxIter = 50;

% Call the Secant function
[root, iterations] = secant(f, x0, x1, tol, maxIter);

% Display final result
fprintf('\nFinal Result:\n');
fprintf('Root = %.8f\n', root);
fprintf('Number of iterations = %d\n', iterations);
fprintf('f(root) = %.8f\n', f(root));