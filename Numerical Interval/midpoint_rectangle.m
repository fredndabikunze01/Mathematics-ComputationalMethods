function integral = midpoint_rectangle(f, a, b, n)

% Calculate the width of each subinterval
h = (b - a) / n;

% Calculate the midpoint of each subinterval
midpoints = a + h/2 : h : b - h/2;

% Calculate the midpoint rectangular approximation
integral = h * sum(f(midpoints));

end