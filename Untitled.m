%% Homework 5
% Author Minhyuk Nam
% Date 05/21/2018

syms x
f(x) = x^2 + x + 3
g(x) = cos(x)
h(x) = exp(x)

double(limit(f(x), x, 10))
double(limit(g(x), x, 10))
double(limit(h(x), x, 10))

subs(diff(f(x), x), 10)
subs(diff(g(x), x), 10)
subs(diff(h(x), x), 10)

int(f(x), x, 1, 10)
int(g(x), x, 1, 10)
int(h(x), x, 1, 10)