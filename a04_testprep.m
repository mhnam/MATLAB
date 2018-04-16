%% Homework 4
% Author Minhyuk Nam
% Date 04/16/2018

%% Problem 1
clear all

A = zeros(5);

for i = 1 : 5;
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

%% Problem 4 (1)
clear all

i = 10;
k = 1;
for j = 1 : 2*i;
    x(k) = j * isprime(j) * isprime((2*i) - j);
    y(k) = ((2*i) - j) * isprime(j) * isprime((2*i) - j);
    k = k + 1;
 end

scatter(x,y)
xlim([0.01 18]);
ylim([0.01 18]);

%% Problem 4 (2)
clear all

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
