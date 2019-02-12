clc;
clear all;
close all;

imRGB = imread('lenna.png');%'lenna.png');%'vanc.jpg');
[r c d] = size(imRGB);
figure
imshow(imRGB)
title(['Full Original Image: ', num2str(r), 'x ',num2str(c)]);
clear r c d



imRGBdown2 = down(imRGB);
[r c d] = size(imRGBdown2);
figure()
imshow(imRGBdown2)
%title(['subsampled by 2: ', num2str(r), 'x ',num2str(c)]);
clear r c d


imRGBup2 = up(imRGBdown2);
[r c d] = size(imRGBup2);
figure()
imshow(imRGBup2,[])
%title(['subsampled by 2: ', num2str(r), 'x ',num2str(c)]);
clear r c d




