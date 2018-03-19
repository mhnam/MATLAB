% NOTES
% DATE: 12/03/2018
% AUTHOR: MINHYUK NAM

%% CHP 1-2. Assigning Matrix
A = [1, 2, 3, 4];
B = [1 : 4]; %공차가 1인 range
C = [1 : 2 : 5]; %공차가 2인 (1, 5) range
D = linspace(1, 7, 3); %항이 3개가 되도록 (1, 7) range
E = [1 : 4 ; 5 : 8]; % 2X4 matrix, note that ; change row
% E = [1: 4; 5 : 6] Not valid
F = {'hello', 'world'}
rand(2, 3); %random 2x3 matrix
randi(2, 3); %random number (using 1,2) using 2x3 matrix
zeros(3); %3x3 zero matrix
eye(3); %3x3 identity matrix

A = zeros(3)
B = eye(3)
A(:, :, 2) = B %

%% CHP 1-3. Matrix Operation
mean
max
sort
diff
reshape

%% CHP 1-4. Plotting
load oilprices
plot(Gasoline)
plot(Year, Gasoline)
plot(Year, Gasoline, 'color', 'r')
plot(Year, Gasoline, 'market', 'o')

scatter
bar
stem
stairs
area
pie
hist

%% CHP1 Exercise
% 1 - a
B = [1; 2; 3; 4; 5];
A = [B, B, B, B, B];

% 1 - b
B = zeros(7);
B(2:6, 2:6) = ones(5);
B(3:5, 3:5) = 2*ones(3);
B(4, 4) = 3;

%% CHP 2-1. Using Script File
fs = 5000;
t = 0:1 / fs:1.5;
f1 = 175;
y_1 = sin(2*pi*f1*t);
y_2 = sin(2*pi*2*f1*t);
y_3 = sin(2*pi*3*f1*t);
y_0 = y_1 + y_2 +y_3;
k = (2*exp(-1.5*t)).*sin(2*pi*0.65*t);
sound = k.*y_0;
soundsc(sound, fs)
plot(t,sound)

%% CHP 2-2. Using Data File
xlsread Movies

%% CHP 2-3. Using Table Data File
% DIFFERENCE BETWEEN MATRIX, TABLE AND CELL

% MATRIX
% all elements must have the same type (all the elements must have
% the same attribute)

% TABLE (aka DATASET)
% may have differnet type of elements, same type within the same
% column - we can use slicing operation

% CELL
% all kinds of elements may have different types - i.e., matrix,
% number etc.

%% CHP 2-4. Converting data

%% CHP 2-5. Acessing Data using Logical Operations
% LOGICAL OPERATION
% &(AND), |(OR), ~(NOT), ==(EQUAL), ~=(NOT EQUAL)

%% CHP2 EXERCISE
A = xlsread('oilprices.xlsx')

