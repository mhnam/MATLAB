%%
% NOTES
% DATE: 02/04/2018
% AUTHOR: MINHYUK NAM

%% CHP 5-1.Differentiation

f = @(x) x.^3 %define a function for cubed
appD = @(t, dt) (f(t + dt) - f(t)) / dt;
T = -5 : .1 : 5; %define a sequence from -5 to 5 with step 0.1

plot(T, appD(T, 5), 'b.')
hold on

plot(T, appD(T, 1), 'r-.')
plot(T, appD(T, .1), 'k-')
plot(T, appD(T, .01), 'g-x')
plot(T, f(T), 'k')

grid, axis([-5, 5, -25, 40])
legend('dt = 5', 'dt = 1', 'dt = 0.1', 'dt = 0.01', 'f = x^3')
xlabel('t')
ylabel('f(t)')
title('Differentiation')
hold off

%% CHP 5-2. Linear Approx.
%% Linear Approx.
clear all

tI = 0; %initial value
tF = 3; %end value
dt = .01; %difference on x-axis
fIV = 0; %index initialisation
t = tI : dt : tF; %define a sequence

fEuler(1) = fIV; %define a matrix called fEuler
for i = 1 : (length(t)-1)
    dfdt(i) = 1/(1 + t(i)^2);
    fEuler(i + 1) = fEuler(i) + dfdt(i) * dt;
end

plot(t, fEuler)
xlabel('x')
ylabel('F')
title('Linear Approximation of atan(x)')

%% Indefinite Integrals
clear all

syms x
f = @(x) 1/(1 + x.^2);
F = int(f, x)

ezplot(F)
xlabel('x')
ylabel('F')
title('atan(x)')
