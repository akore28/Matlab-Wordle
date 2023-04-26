function matchedStrings = checkWord(dictFile, guessedWord)

% create an empty vector for the result
matchedStrings = [];

% loop over the dictionary, word by word
for i = 1:length(dictFile)
% ith word in dictionary contains str, then insert ith word of
% dictionary at the end of matchesStrings

if(length(strfind(dictFile(i), guessedWord) > 0))
matchedStrings = [matchedStrings, dictFile(i)];

end
end
end