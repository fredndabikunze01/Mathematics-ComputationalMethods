function integral = trapezoidal(f, a, b, n)

% Calculate the width of each subinterval
h = (b - a) / n;

% Create the x values
x = a:h:b;

% Calculate the function values
y = f(x);

% Apply the trapezoidal rule
integral = (h / 2) * (y(1) + 2 * sum(y(2:n)) + y(n+1));

end