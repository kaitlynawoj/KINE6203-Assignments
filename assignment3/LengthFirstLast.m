function [CharacterNumber, FirstCharacter, LastCharacter] = LengthFirstLast(string)
% This function takes a word or statement stored in the variable 'string'
% and returns the number of charaters, first character, and last character.
%
% Inputs: 1 character array (string)
% Outputs: Number of characters in the statement (CharacterNumber), the first
% character in the statement (FirstCharacter) and the last character in the
% statement (LastCharacter)
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
CharacterNumber = length(string)
FirstCharacter = string(1)
LastCharacter = string(end)
end