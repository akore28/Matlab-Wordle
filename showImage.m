function [imageTiles] = showImage(correctLetters, letterImage, imageTiles)
%read in the image files needed
A = imread('greenSquare.png'); %sets A to the correct letter image green
B = imread('yellowSquare.png'); %sets B to right letter wrong place yellow
C = imread('greySquare.png'); %sets C to wrong letter grey


% define j loop
j = 1;
for j = 1:length(correctLetters)

    if correctLetters(j) == 1
        letterImage = cat(2,letterImage, A);

    elseif correctLetters(j) == 2
        letterImage = cat(2,letterImage, B);

    elseif correctLetters(j) == 0
        letterImage = cat(2,letterImage, C);

    end
end

imageTiles = cat(1, imageTiles, letterImage);
imshow(imageTiles);

end