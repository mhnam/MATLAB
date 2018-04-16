%% Homework 4
% Author Minhyuk Nam
% Date 04/16/2018
 
%% Problem 1
A = zeros(5);
 
for i = 1:5;
    if mod(i, 2)
        A(i,2) = 1;
        A(i,4) = 1;
    else
        A(i,1) = 1;
        A(i,3) = 1;
        A(i,5) = 1;
    end
end
 
A
 
%% Problem 2
sum = 0;
for i = 1:100;
    if mod(i,2);
        sum = sum + i;
    end
end
 
sum
 
%% Problem 3 (1)
val1 = 3;
val2 = 5;
sum = val1 + val2;
product = val1 * val2;
disp([sum, product])
 
f = @(x, y) x + y;
g = @(x, y) x * y;
 
%% Problem 3 (2)
f = @(x, y) x + y;
g = @(x, y) x * y;
 
val1 = 3;
val2 = 5;
sum = f(val1, val2);
product = g(val1, val2);
disp([sum, product])
 
%% Problem 4 (1)
 
j = 1
for i = 1 : 20;
    x(j) = i * isprime(i) * isprime(20-i);
    y(j) = (20-i) * isprime(i) * isprime(20-i);
    j = j + 1;
end
 
scatter(x,y)
xlim([0.01 18]);
ylim([0.01 18]);
 
%% Problem 4 (2)
 
k = 1;
for i = 1 : 10;
    for j = 1 : 2*i;
    x(k) = j * isprime(j) * isprime((2*i) - j);
    y(k) = ((2*i) - j) * isprime(j) * isprime((2*i) - j);
    k = k + 1;
    end
end
 
scatter(x,y)
xlim([0.01 18]);
ylim([0.01 18]);
 
%% Problem 5
f = @(x) x.^3;
area = 0;
 
for i = 1 : 1000;
    x = 0: 1/i : 1;
    y = f(x);
    for j = 1 : (length(x) - 1);
        area = area + y(j) * (x(j+1) - x(j));
    end
     
    if (1/4 - area) < 0.0015;
        break
    else
        area = 0;
        i = 0;
    end
end
 
disp([area, i])
