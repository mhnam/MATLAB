%%
% NOTES
% DATE: 06/04/2018
% AUTHOR: MINHYUK NAM

%% QUESTION 1
clear
clc
syms x h
f(x) = x^3 - 9 * x^2 + 24 * x + 5;

subs(diff(f, x), 10)
double(ans)

limit((f(x) - 21)/(x^2 - 1), x, 1)

limit((f(1 + 3*h) - f(1)) / h, h, 0)

ezplot(f)

[x_min, y_min] = fminsearch(f, 6)
[x_max, y_max] = fminsearch(-f, 0); % Note that fminsearch(-f, n) finds opposite sign y
y_max = (-1) * y_max;
[x_max, y_max]

%% QUESTION 2

%% QUESTION 3

%% QUESTION 4
syms t

a1 = -0.2;
a2 = 0.3;
b1 = 9; % width
b2 = 4; % height

%rectangle
w(t) = a1 * t + b1; % width
h(t) = a2 * t + b2; % height
d(t) = sqrt(w(t)^2 + h(t)^2);
t_sq = (b2-b1)/(a1-a2);

double(subs(diff(d, t), t_sq)) % moment square


%% QUESTION 4 - NOT DONE
syms t

a1 = -0.2;
a2 = 0.3;
b1 = 9; % width
b2 = 4; % height

%rectangle
w(t) = a1 * t + b1; % width
h(t) = a2 * t + b2; % height
d(t) = sqrt(w(t)^2 + h(t)^2);

%find such t
for t = 0 : .01 : 1
    if w(t) - h(t) < .001
        break
    end
end

disp(t)

t_sq = (b2-b1)/(a1-a2);
double(subs(diff(d, t), t_sq)) % moment square

%% QUESTION 5


%% QUESTION 6
clear
clc

syms x

f = @sin;
a = 0;
b = pi;
sum = 0;
rsum = int(f(x), a, b );

for n = 10 : 1000
    dx = (b-a)/n;
    for k = 1 : n
        sum = sum + f(a + k*dx)*dx;
    end
    
    if abs(rsum - sum) < 0.01
        disp([n, sum])
        break
    end
    
    sum = 0;
end
