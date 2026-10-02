function [root, iterations] = newton_raphson(f, df, x0, tol, maxIter)

% Display table heading
fprintf('Iteration\t x_n\t\t f(x_n)\t\t f''(x_n)\t x_next\t\t Error\n');

for i = 1:maxIter

    % Calculate function value
    fx = f(x0);

    % Calculate derivative value
    dfx = df(x0);

    % Check if derivative is zero
    if dfx == 0
        error('Derivative is zero. Newton-Raphson cannot continue.');
    end

    % Calculate next approximation
    x1 = x0 - fx / dfx;

    % Calculate error
    error_value = abs(x1 - x0);

    % Display iteration results
    fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', ...
        i, x0, fx, dfx, x1, error_value);

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