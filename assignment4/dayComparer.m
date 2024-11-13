function [increaseSubjects] = dayComparer(SubjectID, FirstDayComp, SecondDayComp)
% This function compares the data between two separate time periods from a
% given data set.
%
% Inputs: FirstDayComp and SecondDayComp (the days being compared)
% Outputs: increaseSubjects (the subjects who saw an increase across the
% two days)
% Written by Kaitlyn Wojciechowski
% Tested on Matlab 2024a
% ok on MacOS Monterey version 12.2.1
increaseAcrossDays = SecondDayComp > FirstDayComp;
increaseSubjects = SubjectID(increaseAcrossDays);
end