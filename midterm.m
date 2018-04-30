%% 1
clear
clc

A = zeros(5);
for i = 1 : 5
    for j = 1 : 5
        if mod(i + j, 2)
            A(i, j) = i + j;
        end
    end
end

disp(A)

%% 2
clear
clc

n = input('Enter a integer: ');
sum = 0;
for i = 1 : n
    sum = sum + 1/i;
end

disp(sum)

%% 3-1
function y = func(x1, x2);
y = [x1 + x2, x1 * x2];
end

%% 3-2
clear
clc

M3_1_20150555(64, 512)

%% 4-1
clear
clc

index = 1; n = 10;
for i = 0 : (2*n+1)
    for j = 0 : (2*n+1)-i
        k = (2*n+1)-i-j;
        x(index) = isprime(i)*isprime(j)*isprime(k)*i;
        y(index) = isprime(i)*isprime(j)*isprime(k)*j;
        z(index) = isprime(i)*isprime(j)*isprime(k)*k;
        index = index + 1;
    end
end

%% 4-2
clear
clc

index1 = 1; index2 = 1;
for n = 3 : 10
    for i = 1 : (2*n+1)
        for j = 1 : (2*n+1)-i
            k = (2*n+1)-i-j;
            x(index1, index2) = isprime(i)*isprime(j)*isprime(k)*i;
            y(index1, index2) = isprime(i)*isprime(j)*isprime(k)*j;
            z(index1, index2) = isprime(i)*isprime(j)*isprime(k)*k;
            index2 = index2 + 1;
        end
    end
    index1 = index1 + 1;
    index2 = 1;
end
