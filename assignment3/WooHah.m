function [WooHahResult] = WooHah(num1,num2)
% This function takes two numbers as inputs and calculates their sum. If
% their sum is even, it will return "Woo," and if their sum is odd, it
% will return "Hah".
%
% Inputs: 2 numbers
% Output: "Woo" or "Hah" dependent on if their sum is odd or even
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
sumNums = num1 + num2
even = 2
WooOrHah = rem(sumNums,even)
if WooOrHah == 0
   WooHahResult = 'Woo'
else
    WooHahResult = 'Hah'
end
end