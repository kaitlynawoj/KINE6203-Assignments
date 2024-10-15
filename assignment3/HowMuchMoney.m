function [TotalAmount] = HowMuchMoney(quarters,dimes,nickels,pennies)
% This function takes the total amount of quarters, dimes, nickels, and
% pennies as inputs and returns the total amount of money they add up to as an
% output. 
%
% Inputs: 4 numbers (quarters, dimes, nickels, and pennies)
% Outputs: 1 number (total of quarters, dimes, nickels, and pennies)
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
QuarterTotal = quarters * 0.25;
DimesTotal = dimes * 0.10;
NickelsTotal = nickels * 0.05;
PenniesTotal = pennies * 0.01;
TotalAmount = QuarterTotal + DimesTotal + NickelsTotal + PenniesTotal;
end