function [out]=PSNR(originalImg,modifiedImg)

%% PSNR of Image Peak signal to noise ratio.

%Peak signal-to-noise ratio is a term for the ratio between the maximum
%possible power of a signal (in our case image)
%and the power of corrupting noise that affects the fidelity of its representation.
%PSNR is an approximation to human perception of reconstruction quality.

% parameters:
% originalImg      = Orignal Image
% modifiedImg      = Modified Image
% Size of two images must be same.

% Code Developed by :
% Gregory Kalliatakis (December 2014) - gkalliatakis@yahoo.gr
% Masters in Computer Vision
% University of Burgundy, France
% Advanced Image Analysis - Homework Project on Bilateral Filtering

originalImg =im2double(originalImg);
modifiedImg   =im2double(modifiedImg);

meanSquareError=sum(sum((originalImg-modifiedImg).^2))/(numel(originalImg)); 
out=10*log10(1/meanSquareError);
end
