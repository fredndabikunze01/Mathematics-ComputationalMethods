function integral = left_rectangle(f, a, b, n)

% Calculate the width of each subinterval
h = (b - a) / n;

% Create the x values
x = a:h:b;

% Calculate the left rectangular approximation
integral = h * sum(f(x(1:n)));

end