function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
% This function calculates individual male and female means as well as male
% and female group means based on a given dataset. 
%
% Inputs: 4 variables (Gender, Day1, Day2, Day3)
% Outputs: 2 sets of individual means (maleIsoIndmeans, femaleIsoIndMeans,
% 2 group means (maleGroupIsoMean, femaleGroupIsoMean)
%
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1

maleData = find(Gender == 'M');
femaleData = find(Gender == 'F');

maleDay1 = Day1(maleData);
maleDay2 = Day2(maleData);
maleDay3 = Day3(maleData);

femaleDay1 = Day1(femaleData);
femaleDay2 = Day2(femaleData);
femaleDay3 = Day3(femaleData);

maleIsoIndMeans = (maleDay1 + maleDay2 + maleDay3)/3
femaleIsoIndMeans = (femaleDay1 + femaleDay2 + femaleDay3)/3

maleGroupIsoMean = mean(maleIsoIndMeans)
femaleGroupIsoMean = mean(femaleIsoIndMeans)

end