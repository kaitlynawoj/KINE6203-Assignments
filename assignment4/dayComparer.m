function [increaseSubjects] = dayComparer(SubjectID, FirstDayComp, SecondDayComp)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
increaseAcrossDays = SecondDayComp > FirstDayComp;
increaseSubjects = SubjectID(increaseAcrossDays);
end