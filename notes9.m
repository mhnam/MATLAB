%%
% NOTES
% DATE: 05/14/2018
% AUTHOR: MINHYUK NAM

%% 1. Limitation, Differentiation and Integral
% syms ; do not use comma(,) to differentiate each variables
% limit(<things to limit), <smth>, <goes to somewhere>)
% diff(<function>, <with respect to>)
% int(<function>, <with respect to>, [initial val], [terminal val]) use
% [initial val], [terminal val] for def. integral

%% 1-1. Basic Usage
syms x dx
f(x) = 2 * x + x^4 %require .^ to use component wise 4th power
                   %equiv to f = @(x) 2 * x + x.^4

% limit, differentiation
limit((f(x+dx)-f(x))/dx, dx, 0) %equiv to diff(f(x))
diff(f(x), x)
dfdx = diff(f(x), x) %dfdx become derivative of f

ezplot(dfdx) %plot dfdx

% integral
int(1/x, x, 1, 20) % definite integral
double(ans) % equiv. to double(int(1/x, x, 1, 20))

int(1/x, x) % indef. integral

%% 1-2. Further Usage
f(x) = cos(x), g(x) = sin(x)
diff(f(x)*g(x), x) % differentiation of multiplication
simplify(ans) % to make simplier result

diff(f(x)/g(x), x) % differentiation of fraction
simplify(ans)

%% 1-3. Others
int(x^x, x) % since indef. integral of x^x w.r.t. x is unknown, 
double(int(x^x, x, 1, 2)) % approximation can be calculated

%% Assignment
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

%% 2. ODE45 SOLVER
% [t, solutions] = ode(<problems name to call>, <t values>, <initial value of sols>)
% REQUIRE M FILES TO USE THIS SOLVER

% BELOW FUNCTION IS DEFINED AS ```EPIDEMIC``` IS CREATED
% function SEQ = epidemic(t, sols)
% SEQ = zeros(size(sols)); % matrix size is known after it is calculated
% 
%```BELOW PART IS SET OF CONSTANTS```
% a = 0.001;
% b = 0.2;
% 
% S = sols(1);
% I = sols(2);
% R = sols(3);
% 
% ```BELOW PART IS SET OF ALGEBRA (system of ODE)```
% SEQ(1) = (-a) * S * I;
% SEQ(2) = a * S * I - b * I;
% SEQ(3) = b * I;

[t, solutions] = ode45('epidemic', 1:0.5:50, [2180, 1, 0]);
plot([t, solutions]), legend
