%% Practice Question
% Author Minhyuk Nam
% Date 04/09/2018

%% 1. Matrix Manipulation
a = ones(7);
a(2:6, 2:6) = zeros(5);
a(3:5, 3:5) = ones(3);
a(4, 4) = 0

%% 2. Goldbach's conjecture (1)
% ```isprime()``` is a function that verifies whether number is prime
% to check whether 20 has its own combination

j = 1;
for i = 1 : 20
    if isprime(i) & isprime(20-i);
        answer(j, 1) = i;
        answer(j, 2) = 20-i;
        j = j+1;
        %disp([i, 20-i])
    end
end
disp(answer)

%% 2. Goldbach's conjecture (2)
% to check all even numbers from 4 to 20

for i = 3 : 20
    if mod(i, 2) == 0
        fprintf("\n%d's combination:\n", i)    
        for j = 1:i
            if isprime(j) & isprime(i-j);
                disp([j, i-j])
            end
        end
    end
end

%% 2. Goldbach's conjecture (2)
% to check all even numbers from 4 to 20

for n = 1:10
    for i = 1:2*n
        if isprime(i) == 1 & isprime(2*n-i) == 1
            x(n, i) = i;
            y(n, i) = 2*n - i;
        end
    end
end

%% 3. Parial Sum (1)
% using for loop

f = @(x) x.^2;
area = 0;

for n = 1 : 1000;
    x = 0 : 1/n : 1;
    y = f(x);
    for m = 1 : (length(x)-1)
        area = area + y(m) * (x(m+1) - x(m));
    end
    
    if (1/3 - area) < 0.0014;
        fprintf("\nThe error term become less than 0.0014 when there is %d pieces and the result is %d\n", n, area)
        break
    else
        n = 0;
        area = 0;
    end
end

%% 3. Parial Sum (2)
% using while loop

f = @(x) x.^2;
n = 0;
err = 1;
syms area;

while err > 0.0014
    n = n + 1;
    area = 0;
    x = 0 : 1/n : 1;
    y = f(x);
    for m = 1 : (length(x)-1)
        area = area + y(m) * (x(m+1) - x(m));
    end
    err = 1/3 - area;
end

fprintf("\nThe error term become less than 0.0014 when there is %d pieces and the result is %d\n", n, area)

%% 3. Parial Sum (2)
% using while loop

f = @(x) x.^2;
n = 0;
err = 1;

while err > 0.0000000001
    n = n + 1;
    area = 0;
    
    x = 0 : 1/n : 1;
    y = f(x);
    
    for m = 1 : (length(x)-1)
        area = area + y(m) * (x(m+1) - x(m));
    end
    
    err = 1/3 - area;
end

fprintf("\nThe error term become less than 0.0014 when there is %d pieces and the result is %d\n", n, area)
