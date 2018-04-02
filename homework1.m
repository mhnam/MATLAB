%% Homework 1

% Author Minhyuk Nam (20150555)
% Date 26/03/2018

%% Factorial Calculation

clc
clear

x = input('Enter a number: ');
result = 1;

for i = 1 : x
    result = result * i;
end
    
disp(result)