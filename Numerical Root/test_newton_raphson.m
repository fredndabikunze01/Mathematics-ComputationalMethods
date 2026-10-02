clc;
clear;

% Define the function
f = @(x) x^3 - x - 2;

% Define the derivative
df = @(x) 3*x^2 - 1;

% Initial guess
x0 = 1.5;

% Tolerance
tol = 0.000001;

% Maximum number of iterations
maxIter = 50;

% Call the Newton-Raphson function
[root, iterations] = newton_raphson(f, df, x0, tol, maxIter);

% Display final result
fprintf('\nFinal Result:\n');
fprintf('Root = %.8f\n', root);
fprintf('Number of iterations = %d\n', iterations);
fprintf('f(root) = %.8f\n', f(root));