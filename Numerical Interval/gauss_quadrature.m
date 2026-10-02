function integral = gauss_quadrature(f, a, b)

% Two Gauss-Legendre points
t1 = -1 / sqrt(3);
t2 =  1 / sqrt(3);

% Calculate the transformation constants
A = (b - a) / 2;
B = (a + b) / 2;

% Transform the Gauss points from [-1,1] to [a,b]
x1 = A * t1 + B;
x2 = A * t2 + B;

% Calculate the function values
f1 = f(x1);
f2 = f(x2);

% Calculate the Gauss Quadrature approximation
integral = A * (f1 + f2);

end