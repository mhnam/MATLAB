%%
% Chapter 5. Rectangular Sum
% DATE: 05/21/2018
% AUTHOR: MINHYUK NAM

%% 1.  Plotting Convergence
syms n % declare variable n
a(n) = (n+1)/n;
N = 1:100;
plot(N, a(N), 'x')
% c.f., We cannot conclude that the function converges to 1 by only using the
% plot, RATHER USE order of convergence: abs(a_{n+1})/(abs(a_n))^p \le C

% i.e., This can be applied to visualise 'Newton's Method Approximation'
% x_{n+1} = a(x_n)

%% 2. Rectangular Sum
%% 2-1. Lower Rectangular Sum
clc
clear

syms x;
f(x) = x ^3; % declare the function f

% to make re-usable rectangular summation code
x_min = 0;
x_max = 1;
y_min = 0; % redundant
y_max = 1; % redundant
n = 10; % number of subintervals
dx = (x_max - x_min) / n;
recSum = 0; % to store the result;
xVal = x_min : dx : (x_max - dx);

for i = 1 : length(xVal)
    % fill([xVals], [yVals]) where list values are entered as
    % anti-clockwise from left bottom side
    fill([xVal(i) xVal(i) (xVal(i) + dx) (xVal(i) + dx)], ...
        [0 f(xVal(i)) f(xVal(i)) 0], [1, 1, 0])
    hold on
    
    % calculate the actual rectangular summation result
    recSum = recSum + f(xVal(i)) * dx;
end

ezplot(f(x),[x_min, x_max])
hold off

fprintf('Rectangular Sum: %.2f\n', recSum)
fprintf('\nActual Definite Integral: %.2f\n', int(f(x), [x_min, x_max]))
fprintf('\nError: %.6f\n', abs(recSum- int(f(x), [x_min, x_max])))

%% 2-2. Midpoint Rectangular Sum (NOT DONE)
clc
clear

syms x;
f(x) = x ^3; % declare the function f

% to make re-usable rectangular summation code
x_min = 0;
x_max = 1;
y_min = 0; % redundant
y_max = 1; % redundant
n = 10; % number of subintervals
dx = (x_max - x_min) / n;
recSum = 0; % to store the result;
xVal = x_min : dx : (x_max - dx);

for i = 1 : length(xVal)
    % fill([xVals], [yVals]) where list values are entered as
    % anti-clockwise from left bottom side
    fill([xVal(i) xVal(i) (xVal(i) + dx) (xVal(i) + dx)], ...
        [0 f(xVal(i)) f(xVal(i)) 0], [1, 1, 0])
    hold on
    
    % calculate the actual rectangular summation result
    recSum = recSum + f(xVal(i)) * dx;
end

ezplot(f(x),[x_min, x_max])
hold off

fprintf('Rectangular Sum: %.2f\n', recSum)
fprintf('Actual Definite Integral: %.2f\n', int(f(x), [x_min, x_max]))
fprintf('Error: %.6f\n', abs(recSum- int(f(x), [x_min, x_max])))

%% 2-3. Trapezoid Sum (Simpson's Rule)
clc
clear

syms x;
f(x) = x ^3; % declare the function f

% to make re-usable rectangular summation code
x_min = 0;
x_max = 1;
y_min = 0; % redundant
y_max = 1; % redundant
n = 10; % number of subintervals
dx = (x_max - x_min) / n;
trapSum = 0; % to store the result;
xVal = x_min : dx : (x_max - dx);

for i = 1 : length(xVal)
    % fill([xVals], [yVals]) where list values are entered as
    % anti-clockwise from left bottom side
    fill([xVal(i) xVal(i) (xVal(i) + dx) (xVal(i) + dx)], ...
        [0 f(xVal(i)) f(xVal(i)+dx) 0], [1, 1, 0])
    hold on
    
    % calculate the actual rectangular summation result
    trapSum = trapSum + (f(xVal(i)) + f(xVal(i)+dx)) * dx * 1/2;
end

ezplot(f(x),[x_min, x_max])
hold off

fprintf('Trapazoid Sum: %.6f\n', trapSum)
fprintf('Actual Definite Integral: %.6f\n', int(f(x), [x_min, x_max]))
fprintf('Error: %.6f\n', abs(trapSum- int(f(x), [x_min, x_max])))
