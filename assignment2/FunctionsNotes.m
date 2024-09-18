% Functions Practice/Notes

% A function is a group of statements that otgether do a specific
% programming task.
% Think of it as a standalone piece of program functionality, or a tool for
% your programming box, like an assembly line
% A popular function is input

% Anonymous functions
% One liner functions
% Useful when you don't want to create a separate file
% Syntax: functionName = @(argumentlist)expressionToEvaluate
% "@" tells Matlab that you're using a function
% Example:
power = @(x,pow)x.^pow;
% Usage:
result = power(2,2);

%Example:
function [output1,output2,outputN] = myFunName(input1,input2,inputN)
% (code to execute)
end

% If you type in help (function), it will bring back a detailed list of
% what the function does. If you build your own function, you write this
% detailed list/comment block, so be sure to write useful comments

% Primary functions
% Must be defined in a separate file. The file must have the same name as
% the function. Do NOT use the name of a Matlab built in function.

% Write a function that takes two numbers as inputs and then
% subtracts the smaller number from the larger number.

% Write a function that takes 3 grade inputs and returns the average
% and appropriate letter grade for a student.
