function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Kaitlyn Wojciechowski
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced    
    % BUG FOUND!!! the ||s had to be changed to &&s, because || implies
    % that one part of the condition would always be true, so the computer
    % was reading it like the user was never putting in a valid response. 
    % By evaluating all three levels at the same time using the "or" 
    % statement, the "while" could never be false, causing an infinite 
    % loop no matter what the user inputted.
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; 
% BUG FOUND!!! Originally the "H' in advancedHighest was lowercase, so it
% was not a playable condition because the variable did not match the one
% above that was associated with the advanced level of play.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1, highest]);
% BUG FOUND ^^^! rand was not originally incorporated to the second part of
% the equation, which was always causing the highest number to be selected
% for the "random integer". The new code allows the secret number to be
% between 1 and the highest value, including the highest value.

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest 
    % BUG FOUND!!! Original code said that if the user's guess was greater
    % than or equal to the highest value, it would not be considered valid,
    % but this is incorrect because the highest value is eligible to be
    % selected as the secret number. The new code allows the player to
    % guess the highest number with the equal sign being taken out of the
    % inequality.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber % BUG FOUND!!! Switched the inequality to less
                            % than when it was originally greater than, not
                            % matching the text that follows the
                            % conditional
fprintf('Sorry, %d is too low.\n', userGuess);
numOfTries = numOfTries + 1; 
% BUG FOUND!!! Originally, the statement numOfTries = numOfTries + 1; was
% outside of the guess check conditional, so it was always adding one to
% the amount of tries a player took to guess the number. By moving it in
% the conditional after the above statement and in the elseif statement
% directly below this, it only adds a move if the player's guess is
% incorrect.
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
numOfTries = numOfTries + 1;
% Part B of the previous bug is here ^
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);

% BUG FOUND!!! The end of this statement was missing the number of tries so
% it wasn't originally displaying the number of tries the user took before
% going into the game over statement. numofTries was added following
% secretNumber to correct this.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end 
 % BUG FOUND!!! Ending the while loop to keep asking the user for
    % guesses once the game ends
 % of guessing while loop
end
% end of game