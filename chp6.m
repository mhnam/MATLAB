%%
% Chapter 6. Finding Local Maxima, Minima
% DATE: 05/28/2018
% AUTHOR: MINHYUK NAM

%% 1. Finding Local Minimum and Maximum
%% 1-1. Find Min (1)
clear
clc

syms x
f(x) = x^2 + 5 * x - 1;
ezplot(f)
[x_min, y_min] = fminsearch(f, -2) % find minimum from function f start from -2 (find local min)
subs(diff(f(x),x), x_min) % to check whether differentiation is 0

%% 1-1. Find Min (2)
clear
clc

syms x
g(x) = 0.1 * x^4 - 1.1 * x^3 + 3 * x^2 - x + 5;
ezplot(g)

[x_min, y_min] = fminsearch(g, -1) % find minimum from function f start from -1 (find local min)
[x_min, y_min] = fminsearch(g, 5) % find minimum from function f start from 5 (find local min)
double(subs(diff(g(x), x), x_min)) % to check whether differentiation is 0

%% 1-1. Find Min (3)
clear
clc

syms x
g = @(x) 0.1 * x.^4 - 1.1 * x.^3 + 3 * x.^2 - x + 5; % REQUIRE function handle for fminbnd
[x_min, y_min] = fminbnd(g, -2, 2) % find minimum from function f start from -2 to 2 (find local min)

%% 1-2. Find Max (1)
clear
clc

syms x
f(x) = x^2 + 5 * x - 1;
ezplot(f)
[x_max, y_max] = fminsearch(-f, 1) % find minimum from function f start from 1 (find local max)
subs(diff(f(x),x), x_min) % to check whether differentiation is 0

%% 1-2. Find Max (2)
clear
clc

syms x
g(x) = 0.1 * x^4 - 1.1 * x^3 + 3 * x^2 - x + 5;
ezplot(g)

% NOTE THAT THE X_MAX, Y_MAX VALUE IS NEGATIVE DUE TO ```-G```
[x_max, y_max] = fminsearch(-g, 2) % find minimum from function f start from 2 (find local max)
