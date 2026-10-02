function integral = right_rectangle(f, a, b, n)

% Calculate the width of each subinterval
h = (b - a) / n;

% Create the x values
x = a:h:b;

% Calculate the right rectangular approximation
integral = h * sum(f(x(2:n+1)));

end