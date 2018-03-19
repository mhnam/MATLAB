% NOTES
% DATE: 19/03/2018
% AUTHOR: MINHYUK NAM

%% CHP 3-1. Flow Control
%% Repetition(1): for Loop
a = 0;
for i = 1:10 %초기값 0으로 함으로써, i를 1부터 시작함
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
for i = 1:20
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
            error('Quit') %show error message
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

%% CHP 3-2. Image Visualisation
%%
