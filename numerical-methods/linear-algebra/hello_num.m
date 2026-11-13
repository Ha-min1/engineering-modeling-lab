% A small MATLAB/Octave-compatible numerical methods example.
fprintf('Hello, numerical methods!\n');

% Approximate sqrt(2) with Newton's method.
x = 1;
for iteration = 1:6
    x = 0.5 * (x + 2 / x);
end

fprintf('sqrt(2) approximation: %.10f\n', x);
