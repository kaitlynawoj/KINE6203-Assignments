function [ValidOrNot] = ValidTriangle(TriangleSides)
% This function accepts a single 3-element array, stored under the variable
% name "TriangleSides" and then evaluates if the numbers in that array
% represent the sides of a valid triangle.
%
% Inputs: 1 array (Triangle Sides)
% Outputs: 1 number (0 or 1 to represent true or false)
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
TriangleSides = sort(TriangleSides);
a = TriangleSides(1);
b = TriangleSides(2);
c = TriangleSides(3);
if (a + b > c)
    ValidOrNot = true;
else
    ValidOrNot = false;
end
end