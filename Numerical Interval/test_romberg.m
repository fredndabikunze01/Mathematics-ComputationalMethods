clc;
clear;

% Define the function
f = @(x) x.^2 + 1;

% Lower limit
a = 0;

% Upper limit
b = 2;

% Number of Romberg levels
n = 4;

% Call the Romberg function
[integral, R] = romberg(f, a, b, n);

% Display the Romberg table
fprintf('Romberg Integration Table:\n\n');
disp(R);

% Display the final answer
fprintf('Final Romberg Approximation = %.6f\n', integral);