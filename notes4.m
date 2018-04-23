%%
% NOTES
% DATE: 26/03/2018
% AUTHOR: MINHYUK NAM

%% CHP 4-0. Matrix Functions
% length()
% size()

%% CHP 4-1. Plotting
%% ezplot
ezplot('(x-3)^2', [0, 4])
xlabel('x value')
ylabel('f(x)')
title('f')
hold on %to keep the figure window

ezplot('x^2', [0, 4])
ezplot('sin(x)', [0, 4])
hold off %to stop hold on option

%% figure
% figure(n) to mark that the graph is nth plot

figure(5)

%% CHP 4-2. Differential Equation
%% 
% There is a function called 'yeastDE'
% function dYdt = yeastDE(t, Y) %(indep., dep.)
% k = 0.6;
% c = 700;
% dYdt = k * Y * (1 - Y/c); ODE problem

% There are mainly two differnet types of equation - BVP, IVP - Bound value
% prob, and initial value prob.- and ode solver is to solve IVP, so that 

[t, Y] = ode45('yeastDE', 0:20, 1); %(x-value, t-value, initial-val)
plot(t,Y)

% There are vaious type of solver but ode45 is the most typical type

%% Vector Field (not testable)
% There is a function called 'yeastDE'
% function dydt = yeastDE(t, y)
% dydt = t - y ;

clc
clear

dy = @(t, y) t - y;
[T, Y] = meshgrid(-1 : 5, -2 : 4);
arrowY = dy(T, Y);
arrowT = ones(size(Y));

quiver(T, Y, arrowT, arrowY); %draw verctor arrows on plot
hold on

[t, y] = ode45('yeastDE', -1:.1:5, 2); plot(t, y)
[t, y] = ode45('yeastDE', -1:.1:5, 0); plot(t, y)
[t, y] = ode45('yeastDE', -1:.1:5, -1.8); plot(t, y)
hold off
