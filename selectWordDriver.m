%selectWord function test driver and test cases
%selectWord randomly selects a word from the given dictionary.txt file and
%sets it as a variable

%Test Case 1: Call a random word
%gives wordToGuess and wordToGuessChar

[targetWord, targetCharacters] = selectWord('regularWords.txt'); %call function
disp(targetCharacters); %display char array from test case
disp(targetWord); %display string

%test case 2:
[targetWord, targetCharacters] = selectWord('foodWords.txt'); %call function
disp(targetCharacters); %display char array from test case
disp(targetWord); %display string

%test case 3:
[targetWord, targetCharacters] = selectWord('foodWords.txt'); %call function
disp(targetCharacters); %display char array from test case
disp(targetWord); %display string

%if working each test case should have a different word to guess, and every
%time the tests are re-run it should be different
