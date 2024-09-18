% Kaitlyn Wojciechowski
% September 4, 2024
% This code will allow you to play Tic Tac Toe with the computer! Follow
% the prompts to choose whether or not you want to play, what moves you
% want to make, and if you want to play again at the end of the game! Happy
% gaming!

% Welcome message that asks the user if they want to play or not
disp('Welcome to Tic - Tac - Toe! Do you want to play a game? If so, type yes, if not, type no')
PlayOrNot = lower(input('Yes or No?: ', 's'));

% Checks for a valid response from the player
while PlayOrNot ~= "yes" && PlayOrNot ~= "no"
    disp('Invalid input. Please type "yes" or "no".');
    PlayOrNot = lower(input('Yes or No?: ', 's'));

end

% Establishes game board
while strcmp(PlayOrNot, 'yes')
    disp('Great! Let me launch our game!')
    board = ["1","2","3";"4","5","6";"7","8","9"];
    disp('To make your moves, you will type in which number you want your move to replace.')
    disp(board)

    GameOver = false;
    CurrentTurn = 'Player';

    % Makes it so the game alternates back and forth between player and
    % computer moves

    for moveCount = num2str(1:9)
        if strcmp(CurrentTurn, 'Player')
            PlayerMove = input('Where do you want your move to go? Choose 1-9: ','s');
        else
            disp('Invalid move, try again.');
            continue;
        end


        % User move code

        while true

            if PlayerMove == '1' && board(1,1) ~= 'X' && board(1,1) ~= 'O'
                board (1,1) = 'X';
                disp (board)
                break
            elseif PlayerMove == '2' && board(1,2) ~= 'X' && board(1,2) ~= 'O'
                board (1,2) = 'X';
                disp (board)
                break
            elseif PlayerMove == '3' && board(1,3) ~= 'X' && board(1,3) ~= 'O'
                board (1,3) = 'X';
                disp (board)
                break
            elseif PlayerMove == '4' && board(2,1) ~= 'X' && board(2,1) ~= 'O'
                board (2,1) = 'X';
                disp (board)
                break
            elseif PlayerMove == '5' && board(2,2) ~= 'X' && board(2,2) ~= 'O'
                board (2,2) = 'X';
                disp (board)
                break
            elseif PlayerMove == '6' && board(2,3) ~= 'X' && board(2,3) ~= 'O'
                board (2,3) = 'X';
                disp (board)
                break
            elseif PlayerMove == '7' && board(3,1) ~= 'X' && board(3,1) ~= 'O'
                board (3,1) = 'X';
                disp (board)
                break
            elseif PlayerMove == '8' && board(3,2) ~= 'X' && board(3,2) ~= 'O'
                board (3,2) = 'X';
                disp (board)
                break
            elseif PlayerMove == '9' && board(3,3) ~= 'X' && board(3,3) ~= 'O'
                board (3,3) = 'X';
                disp(board)
                break
            else disp ('Invalid move, pick a new move.')
                PlayerMove = input('Where do you want your move to go? Choose 1-9: ','s');
            end
        end


        % Computer moves code

        disp('Computers turn')
        computerTry = true;
        while(computerTry)
            ComputerMove = num2str(randi(9));

            if ComputerMove == "1" && (board(1,1)~= "X" && board(1,1) ~= "O")
                board(1,1) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "2" && (board(1,2)~= "X" && board(1,2) ~= "O")
                board(1,2) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "3" && (board(1,3)~= "X" && board(1,3) ~= "O")
                board(1,3) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "4" && (board(2,1)~= "X" && board(2,1) ~= "O")
                board(2,1) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "5" && (board(2,2)~= "X" && board(2,2) ~= "O")
                board(2,2) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "6" && (board(2,3)~= "X" && board(2,3) ~= "O")
                board(2,3) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "7" && (board(3,1)~= "X" && board(3,1) ~= "O")
                board(3,1) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "8" && (board(3,2)~= "X" && board(3,2) ~= "O")
                board(3,2) = 'O';
                computerTry = false;
                disp(board)
            elseif ComputerMove == "9" && (board(3,3)~= "X" && board(3,3) ~= "O")
                board(3,3) = 'O';
                computerTry = false;
                disp(board)
            elseif all(board(:) ~= "1" & board(:) ~= "2" & board(:) ~= "3" & board(:) ~= "4" & board(:) ~= "5" & board(:) ~= "6" & board(:) ~= "7" & board(:) ~= "8" & board(:) ~= "9")
                break
            else

                continue;


            end
        end
        while GameOver == true
            break
        end


        % Check for a win condition


        if board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O'
            disp('You lose! :(')
            GameOver = true;
        elseif board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(3,1) == 'O' && board(3,2) == 'O' && board(3,3) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(1,1) == 'O' && board(2,1) == 'O' && board(3,1) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(1,3) == 'O' && board(2,3) == 'O' && board(3,3) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(1,1) == 'O' && board(2,2) == 'O' && board(3,3) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif board(1,3) == 'X' && board(2,2) == 'X' && board(3,1) == 'X'
            disp('You win!')
            GameOver = true;
        elseif board(1,3) == 'O' && board(2,2) == 'O' && board(3,1) == 'O'
            disp('You lose :(')
            GameOver = true;
        elseif all(board(:) ~= "1" & board(:) ~= "2" & board(:) ~= "3" & board(:) ~= "4" & board(:) ~= "5" & board(:) ~= "6" & board(:) ~= "7" & board(:) ~= "8" & board(:) ~= "9")
            disp('It''s a tie!')
            break
        end

        if GameOver == true
            break
        end

    end
    % Asks the user if they would like to play again

    disp('Do you want to play again?')
    PlayAgain = lower(input('Yes or No?: ', 's'));
    if strcmp(PlayAgain, 'no')
        disp('Thanks for playing!')
        break
    end
end
% I figured out how to make the user's response case insensitive using
% 'lower' through ChatGPT. Using 'lower' allows the user to type yes or no
% using whatever case they want, but it will be converted to lowercase so the
% code can execute.

if PlayOrNot == "no"
    disp('Aw shucks! Maybe another time!')
end
