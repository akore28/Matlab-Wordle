% this function allows the user to choose the difficulty for the game - 
% which displays how many guesses the player has

function allowedGuesses = chooseDifficulty
allowedGuesses = 0; % store 0 for the allowed guesses
difficulty = ["Easy", "Medium", "Hard"]; % display the difficulty levels

% opens a GUI menu that gives the user 3 difficulty settings to choose 
difficultyLevel = menu('Choose Difficulty', difficulty); 

% choosing different case allows for different number of guesses
switch difficultyLevel
    case 1
        difficultyLevel = 1; allowedGuesses = 6;
        fprintf("You have %d guesses! \n", allowedGuesses);
    case 2
        difficultyLevel = 2; allowedGuesses = 5;
        fprintf("You have %d guesses! \n", allowedGuesses);
    case 3
        difficultyLevel = 3; allowedGuesses = 4;
        fprintf("You have %d guesses! \n", allowedGuesses);
end