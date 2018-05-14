%%
% NOTES
% DATE: 05/14/2018
% AUTHOR: MINHYUK NAM

%% 1. Limitation
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

%% 2. 

%% 3. 
