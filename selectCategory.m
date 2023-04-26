function [targetWord, targetCharacters] = selectCategory
categories = ["Regular", "Food"]; 

chooseCategory = menu('Choose Category', categories);

if chooseCategory == 1
    [targetWord, targetCharacters] = selectWord('regularWords.txt');
    fprintf("You have selected to play Regular Wordle! \n")

elseif chooseCategory == 2
    [targetWord, targetCharacters] = selectWord('foodWords.txt');
    fprintf("You have selected to play Food Wordle! \n")
end