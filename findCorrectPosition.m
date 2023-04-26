%searchCorrectPosition
%search for matches in the correct position

function [correctLetters] = findCorrectPosition(guessedWord, targetCharacters)
    for i = 1:5
            if guessedWord(i) == targetCharacters(i)
                correctLetters(i) = 1;
            else
                correctLetters(i) = 0;
            end
    end
end