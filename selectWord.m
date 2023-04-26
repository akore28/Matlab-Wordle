

function [targetWord, targetCharacters] = selectWord(dictFile) %initialises select word function

words = fileread(dictFile); %reads in dictionary as character arrays
dictWords = splitlines(words); %splits text array into words
dictWords = dictWords(1:end-1); %removes the empty line from the end


selectRandom = randperm(length(dictWords), 1); %selects a random word form the list
randWord = dictWords{selectRandom}; 
targetWord = lower(randWord); %puts the word into lowercase
targetCharacters = char(targetWord); %converts to character array
    
end
