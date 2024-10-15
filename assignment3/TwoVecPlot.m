function [PlotVecs] = TwoVecPlot(vec1,vec2)
% This function takes two vectors stored in the variables vec1 and vec2 and
% plots their values on a figure with generic labels. This function
% can be helpful when trying to compare values, but ensure that vec1 and
% vec2 are the same size for this function to execute.
%
% Inputs: 2 vectors (vec1 and vec2)
% Outputs: 1 figure
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
plot(vec1,vec2)
xlabel('Vector 1 Values')
ylabel('Vector 2 Values')
title('Vector 1 and Vector 2')
end