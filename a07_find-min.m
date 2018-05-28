%% Homework 7

% Author Minhyuk Nam

% Date 06/04/2018

%% Polynomial
clear
clc

syms x
f(x) = 1/7 * x^4 + 3 * x^2 + 1.4 * x + 3;
ezplot(f)

[x_min, y_min] = fminsearch(f, -2)
subs(diff(f(x),x), x_min)

f = @(x) x^4 + 3 * x^2 + 1.4 * x + 153;
[x_min, y_min] = fminbnd(f, -2, 2)

%% Triangular
clear
clc

syms x
g(x) = cos(x);
ezplot(g)

[x_min, y_min] = fminsearch(g, -4)
subs(diff(g(x),x), x_min)

g = @(x) cos(x);
[x_min, y_min] = fminbnd(g, -4, -2)

%% Exponential Function
clear
clc

syms x
h(x) = -2 * exp(-((x - 4)^2)/(2^2));
ezplot(h, [-1, 9])

[x_min, y_min] = fminsearch(h, 2)
subs(diff(h(x),x), x_min)

h = @(x) -2 * exp(-((x - 4)^2)/(2^2));
[x_min, y_min] = fminbnd(h, 2, 6)
