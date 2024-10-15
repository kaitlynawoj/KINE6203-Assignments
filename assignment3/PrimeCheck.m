function [PrimeOrNot] = PrimeCheck(num1)
% This function takes one number as input and checks if it is a prime
% number or not. If it is, a 1 is returned to represent true, if it is not,
% a 0 is returned to represent false.
%
% Inputs: 1 number
% Outputs: 1 number (0 or 1)
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
PrimeOrNot = isprime(num1);
disp(mat2str(PrimeOrNot)) % Displays 'true' or 'false' instead of 0 or 1
end