% Define the function and its derivative
f = @(x) (1-exp(-135/x))*((9.8*x)/15)-35;

df = @(x) ((-exp(-135/x)*-135*power(x,-2)) * ((9.8*x)/15) ) + ((1-exp(-135/x))*(9.8/15));

% Initial guess
x0 = 50;

% Tolerance error
tolerance = 0.1/100;

% Maximum number of iterations
max_iterations = 100;

% Newton-Raphson iteration
x = x0;
for i = 1:max_iterations
    x_prev = x;
       x = x - f(x) / df(x);
    
    % Check for convergence
    if abs(x - x_prev) < tolerance
        break;
    end
end

% Output the result
fprintf('The root of the equation is approximately %.6f\n', x);
