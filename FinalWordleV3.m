% Final iteration of the code
% Created by Asher Kore
% a1877203

% The game created is the MATLAB version of the very popular game 
% called WORDLE with small extra features

% clears all workspace and variables 
close all
clc 
clear workspace

startWindow = imread('wordleStart.png');
endWindow = imread('wordleEnd.png');
imshow(startWindow);

[targetWord, targetCharacters] = selectCategory;
disp(targetWord);

maxAttempts = chooseDifficulty; %determines maxGuesses.


% define variables
numberOfGuesses = 0; 
correctLetters = 0; 
letterImage = [];
imageTiles = [];

while numberOfGuesses < maxAttempts %Loop until exceed maxGuesses. 
   
    wordGuess = input('Guess the word: ','s');

    correctLetters = findCorrectPosition(wordGuess, targetCharacters);
    lettersToGuess = targetCharacters(~correctLetters);
    correctLetters = findWrongPosition(wordGuess, lettersToGuess, correctLetters); 
    disp(correctLetters);
    
    if length(wordGuess) > 5 
        fprintf("You have only %d guesses remaining !!", numberOfGuesses + 1);
        wordGuess = input(['Your guess had too many letters! Please try again.' ...
            newline, 'Guess the word: '], 's'); 
    elseif length(wordGuess) < 5 
        fprintf("You have only %d guesses remaining !!", numberOfGuesses + 1);
        wordGuess = input(['Your guess did not have enough letters! Please try again.' ...
            newline, 'Guess the word: '], 's');
    end
    
    imageTiles = showImage(correctLetters,letterImage, imageTiles);
    numberOfGuesses = numberOfGuesses +1;
    
    if wordGuess == targetWord
       %Displays winning message.
       fprintf('Nice Job !! You guessed the word in %d guesses! \n', numberOfGuesses);
       fprintf('The Word was %s!', targetWord);

       pause(5); %Pause before clearing game board.
       imshow("wordleEnd.png");
       pause(5);
       close all
       clc
       return 

    end 
end 

fprintf('Oh no! You did not guess the word')%Display losing message.
fprintf('The word was %s!', targetWord);
pause(5); %Pause before clearing game board
imshow('wordleEnd.png');
close all
clc