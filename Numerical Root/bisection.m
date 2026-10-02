
function [root, iterations] = bisection(f, a, b, tol, maxIter)

% Check whether the initial interval contains a root
if f(a) * f(b) > 0
    error('The interval does not contain a root.');
end

% Display table heading
fprintf('Iteration\t a\t\t b\t\t c\t\t f(c)\t\t Error\n');

for i = 1:maxIter

    % Calculate midpoint
    c = (a + b) / 2;

    % Calculate error
    error_value = abs(b - a) / 2;

    % Display iteration results
    fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', ...
        i, a, b, c, f(c), error_value);

    % Check stopping condition
    if abs(f(c)) < tol || error_value < tol
        root = c;
        iterations = i;
        return;
    end

    % Select the new interval
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end

end

% If maximum iterations are reached
root = c;
iterations = maxIter;

end