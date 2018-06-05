%% Homework 6
% Author Minhyuk Nam
% Date 05/28/2018

%% Trapezoid Sum
clc
clear

syms x;
f(x) = x ^3; % declare the function f

x_min = 0;
x_max = 1;
y_min = 0;
y_max = 1;
n = 10; % number of subintervals
dx = (x_max - x_min) / n;
trapSum = 0; % to store the result;
xVal = x_min : dx : (x_max - dx);

for i = 1 : length(xVal)
    fill([xVal(i) xVal(i) (xVal(i)+dx) (xVal(i)+dx)], ...
        [0 f(xVal(i)) f(xVal(i)+dx) 0], [1, 1, 0])
    hold on
    
    trapSum = trapSum + (f(xVal(i)) + f(xVal(i)+dx)) * dx * 1/2;
end

ezplot(f(x),[x_min, x_max])
hold off

disp(trapSum)