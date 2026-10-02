function [root, iterations] = fixed_point(g, x0, tol, maxIter)

% Display table heading
fprintf('Iteration\t x_n\t\t x_next\t\t Error\n');

for i = 1:maxIter

    % Calculate the next approximation
    x1 = g(x0);

    % Calculate the error
    error_value = abs(x1 - x0);

    % Display iteration results
    fprintf('%d\t\t %.6f\t %.6f\t %.6f\n', ...
        i, x0, x1, error_value);

    % Check stopping condition
    if error_value < tol
        root = x1;
        iterations = i;
        return;
    end

    % Update current approximation
    x0 = x1;

end

% If maximum iterations are reached
root = x1;
iterations = maxIter;

end