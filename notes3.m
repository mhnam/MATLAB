% NOTES
% DATE: 19/03/2018
% AUTHOR: MINHYUK NAM

%% CHP 3-1. Flow Control
%% Repetition(1): for Loop
a = 0;
for i = 1:10 %초기값 0으로 함으로써, i를 1부터 시작함, i goes from 1 to 10
    a = a + i;
end
disp(a)

%% Repetition(2): while Loop
a = 0;
i = 1;
while i < 21
    a = a + i;
    i = i + 1; %requires i operation for while loop
end
disp(a)

%% Conditional Statement(1) : if-else
a = 0; b = 0; i = 1;
while i < 21
   if mod(i, 2) == 1
       a = a + i;
   else
       b = b + i;
   end % requires end to close the conditional statement
   i = i + 1;
end
   disp([a, b]) % requires square bracket for printing multiple numbers
   
%% Conditional Statement(2-1): Switch
a = 0; b = 0;
for i = 1 : 20
    switch i
        case 1
            disp('HI')
        case 2
            disp('Bye')
        otherwise
            disp('Error')
    end
end
   
%% Conditional Statement(2-2): Switch
a = 0; b = 0;
for i = 1:11
    switch i
        case {1, 3, 5, 7, 9}
            a = a + i;
        case {2, 4, 6, 8, 10}
            b = b + i;
        otherwise
            error('Quit') %show error message; exploit this function to check each section
	end
end

disp([a, b]) %this statement is ignored because of error() function

%% Conditional Statement(2-3): Switch
a = 0; b = 0;
for i = 1:11
    switch i
        case {1, 3, 5, 7, 9}
            a = a + i;
        case {2, 4, 6, 8, 10}
            b = b + i;
        otherwise
            c = i;
	end
end

disp([a, b, c])

%% Input
a = 0; b = 0;
n = input('Enter number between 1 and 10: ')
for i = 1 : n
    switch i
        case {1, 3, 5, 7, 9}
            a = a + i;
        case {2, 4, 6, 8, 10}
            b = b + i;
        otherwise
            warning('warniing') %warning() function does not quit the programming
    end
end

disp([a, b])

%% Menu
a = 0; b = 0;
n = menu('Choose a color', 'Red', 'Green'); %this function assigens number to n as 1 or 2

if n == 1
    n = 10;
else
    n = 20;
end

for i = 1 : n
    switch i
        case {1, 3, 5, 7, 9}
            a = a + i;
        case {2, 4, 6, 8, 10}
            b = b + i;
        otherwise
            warning('warning')
    end
end

disp([a, b])

%% CHP 3-2. Operators
1+1
2*39
1/9
i*i
10*10
10^2
234456356314 %floating point is default
format long %shows longer digits
234456356314 
format short %shows shorter digits
exp(1) %expon. to 1
exp(2) %expon. to 2
log(2.7183) %natural log
log10(10) %
sqrt(4) %square root
cos(pi) %cosine(pi)
cos(3.14) %difference between pi and 3.14
x = 1 %NOT 1 = x for assignment
x + 2

%% CHP 3-3. Function Handle
%% User Defined Function
F = @(A,x) A*cos(x) %note that A and x are both parameter for function F
F(2, pi) %equiv to a*cos(pi)
S = @(x) sin(x)
G = @(x) 17*S(x) %recursively defined
G(pi)
H = @cos
I = @exp

%% Polynomial Function
f = @(x) x^2+4*x
f(2)
% f(1:5) is not possible

i = 0;
for i = 1:5
    f(i)
end

g = @(x) x.^2+4*x %use .^ for above degree 2
g(1:5) %let function to compute with each elements in the given array

gdiff = @(x) g(x)-g(x-1) %possible to compose function
gdiff(2)
