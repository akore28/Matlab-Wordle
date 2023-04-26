function [correctLetters] = findWrongPosition(guessedWord, lettersToGuess, correctLetters)
    for i = 1:5
            if any(guessedWord(i) == lettersToGuess) && ~correctLetters(i) 
                lettersToGuess(lettersToGuess == guessedWord(i));  
                correctLetters(i) = 2;
            end
    end
end

