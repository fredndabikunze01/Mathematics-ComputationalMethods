clc;
clear;

% Define the fixed-point function
g = @(x) (x + 2)^(1/3);

% Initial guess
x0 = 1.5;

% Tolerance
tol = 0.000001;

% Maximum number of iterations
maxIter = 50;

% Call the fixed-point function
[root, iterations] = fixed_point(g, x0, tol, maxIter);

% Display final result
fprintf('\nFinal Result:\n');
fprintf('Root = %.8f\n', root);
fprintf('Number of iterations = %d\n', iterations);

% Check the original equation
f = @(x) x^3 - x - 2;

fprintf('f(root) = %.8f\n', f(root));