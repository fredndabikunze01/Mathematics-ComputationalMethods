function [integral, R] = romberg(f, a, b, n)

% Create the Romberg table
R = zeros(n, n);

% First trapezoidal approximation
h = b - a;

R(1,1) = (h / 2) * (f(a) + f(b));

% Calculate the remaining rows
for i = 2:n

    % Number of subintervals
    numSubintervals = 2^(i-1);

    % Calculate the new step size
    h = (b - a) / numSubintervals;

    % New points introduced in this row
    x = a + h : 2*h : b - h;

    % Calculate the new function values
    sumNewPoints = sum(f(x));

    % Trapezoidal approximation
    R(i,1) = 0.5 * R(i-1,1) + h * sumNewPoints;

end

% Richardson extrapolation
for j = 2:n

    for i = j:n

        R(i,j) = R(i,j-1) + ...
            (R(i,j-1) - R(i-1,j-1)) / (4^(j-1) - 1);

    end

end

% Final Romberg approximation
integral = R(n,n);

end