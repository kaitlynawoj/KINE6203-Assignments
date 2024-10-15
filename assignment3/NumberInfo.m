function [sum,difference,product,max] = NumberInfo(num1,num2)
% This function will provide the sum, difference, product, and maximum of
% two user inputs. For the difference, it is not going to take the smaller
% number from the bigger number, but rather the first number input from the
% second number input.
%
% Inputs = 2 numbers
% Outputs = sum, difference, product, max
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
sum = num1 + num2;
difference = num1 - num2;
product = num1*num2;

if(num1>num2)
    max = num1;
else
    max = num2;
end
end