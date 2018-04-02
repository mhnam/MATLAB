%% Homework 2
% Minhyuk Nam (20150555)
% Date 02/04/2018

%% Random Matrix
clc
clear

A = [randperm(9, 3); randperm(9, 3); randperm(9, 3)]
a = sort(A(:));
temp = a(1);
b(1) = temp;
j = 2;

for i = 2 : 9
    if temp == a(i)
        continue;
    else
        b(j) = a(i);
        j = j + 1;
    end
    temp = a(i);
end

b
