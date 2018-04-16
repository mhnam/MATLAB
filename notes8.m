%%
% NOTES
% DATE: 04/16/2018
% AUTHOR: MINHYUK NAM

%% 1. Summation of squares

n = input('n: ')
sum = 0;
    
for i = 1 : n
    sum = sum + ((2 * i) - 1);
end

if sum == n^2
    disp('the formula is true')
else
    disp('the formula is false')
end

%% 2. Function definition
% following function is already defined:
% function [y1, y2] = midex3(u1, u2)
% y1 = u1 + u2;
% y2 = u1 * u2;

n = 3;
m = 4;

[a1, a2] = midex3(n, m);

disp([a1, a2])

%% 3. Riemann sums (3): using while loop comparing with 1/err
% Using While loop (To omit the upper bound for n pieces)

f = @(x) x.^2;
n = 0;
err = 0;
t = 0;
syms area;

while t <= 1000
    n = n + 1;
    area = 0;
    x = 0 : 1/n : 1;
    y = f(x);

    for m = 1 : (length(x)-1)
        area = area + y(m) * (x(m+1) - x(m));
    end
    
    err = abs(1/3 - area);
    t = 1/err;
end

fprintf("\nThe error term become less than 0.001 when there is %d pieces and the result is %f while error term is %f\n", n, area, err)
