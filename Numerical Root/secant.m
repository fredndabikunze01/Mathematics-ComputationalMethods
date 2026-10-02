function [root, iterations] = secant(f, x0, x1, tol, maxIter)

% Display table heading
fprintf('Iteration\t x0\t\t x1\t\t x_next\t\t f(x_next)\t Error\n');

for i = 1:maxIter

    % Calculate function values
    f0 = f(x0);
    f1 = f(x1);

    % Check if denominator is zero
    if f1 - f0 == 0
        error('Division by zero. Secant method cannot continue.');
    end

    % Calculate next approximation
    x2 = x1 - f1 * (x1 - x0) / (f1 - f0);

    % Calculate error
    error_value = abs(x2 - x1);

    % Display iteration results
    fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', ...
        i, x0, x1, x2, f(x2), error_value);

    % Check stopping condition
    if error_value < tol
        root = x2;
        iterations = i;
        return;
    end

    % Update values
    x0 = x1;
    x1 = x2;

end

% If maximum iterations are reached
root = x2;
iterations = maxIter;

end