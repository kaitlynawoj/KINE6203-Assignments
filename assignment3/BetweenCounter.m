function [Counter] = BetweenCounter(num1,num2)
% This function takes two numbers as input (num1 and num2) and displays a
% counter from num1 to num2. If the user sets num1 to be larger than num2,
% an error message is displayed instructing them to set their smaller
% number as num1 and their larger number as num2.
%
% Inputs: 2 numbers (num1 and num2)
% Outputs: Counter, number of integers dependent on the distance between
% num1 and num2
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
counter = num1
ender = num2
if num1>num2
    disp('Please set your smaller number as num1 and your larger number as num2 for the counter to work.')
end
while counter < ender
    counter = counter+1
end
end