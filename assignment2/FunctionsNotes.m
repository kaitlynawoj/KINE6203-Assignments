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

% Sub Functions
% Sub-functions are definte within primary functions
% Cannot be called from external files, only from within the primary
% function
% Useful for complex functions that have many processing steps and you want 
% to specify clearly what each part does
% Must pass variables from primary to secondary
% Helpful in troubleshooting and bug catching

% Nested functions
% Functions within the body of another function
% Use a nested function when you want to access and manipulate the parent 
% functions variables

% Private functions
% A primary function that has limited visibility to other functions is
% called a private function
% You might not want to expose parts of your implementation to other 
% functions for example, allowing a user to manipulate a database that 
% has all of the original dataset in it, or the function you write allows 
% a user to set their password
% Store these functions in a subfolder called private. Now these functions
% are only available to functions in the immediate parent folder

% Function scope
% Functions operate in their own workspace. This is separate from the base
% workspace of MATLAB (command line)
% This means that you will not have access to all of the variables that a
% function might use, rather you will only have access to the outputs from
% the function

% Global Variables
% You might want to share variables between functions sometimes
% Use a global variable for this. (Use global keyword when specifying a
% global variable)
% Standard practice for global variables is to name them with all caps.
% Most programming languages do something similar
% global RESULT vs. global result
% You will need to declare a variable as global in all functions that will
% use that variable (and in the base workspace too)

% Error Messages
% Unfortunately, users (and programmers) are not perfect
% A bit of error checking never hurt anybody. This can help people use your
% functions correctly 

% MATLAB Paths
% To use a new function, MATLAB has to know where to look for it. Enter the
% path!!
% Files present in the current working directory are always acceptable
% The current list of directories in MATLAB's search path is obtained by
% the command 'path'
% This command can also be used to add or delete directories from the
% search path - see help 'path'
% If you use a particular folder often, add that folder to your path. For
% example, let's say you had a folder containing alll of your custom
% functions. Add that folder to your path 
