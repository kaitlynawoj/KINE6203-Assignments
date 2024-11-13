% I used the data import tool to get the data in, switching the output type
% from table to column vectors. Next, I went ahead and made 

genderIsoCalc(Gender, Day1, Day2, Day3) % Calling the function

% Storing the outputs of the functions as variables below:
[maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

% Seeing what subject IDs increased from Day 1 to Day 2
% Setting the function inputs equal to the appropriate days:
FirstDayComp = Day1;
SecondDayComp = Day2;
% Setting the output equal to the variable day1toDay2:
day1toDay2 = dayComparer(SubjectID, FirstDayComp, SecondDayComp)

% Seeing what subject IDs increased from Day 2 to Day 3
% Reetting the function inputs equal to the appropriate days:
FirstDayComp = Day2
SecondDayComp = Day3
% Setting the output equal to the variable day2toDay3:
day2toDay3 = dayComparer(SubjectID, FirstDayComp, SecondDayComp)

% Normalizing the data for Day 1
Day1andWeights = Day1 .* Weight; % .* multiplies the values between the two variables
% Actually normalizing the data for Day 1
Day1Norm = (Day1andWeights - min(Day1andWeights)) / (max(Day1andWeights) - min(Day1andWeights))
% Finding the mean of the normalized data for Day 1
normDay1mean = mean(Day1Norm)

% Normalizing the data for Day 2
Day2andWeights = Day2 .* Weight; % .* multiplies the values between the two variables
% Actually normalizing the data for Day 2
Day2Norm = (Day2andWeights - min(Day2andWeights)) / (max(Day2andWeights) - min(Day2andWeights))
% Finding the mean of the normalized data for Day 2
normDay2mean = mean(Day2Norm)

% Normalizing the data for Day 3
Day3andWeights = Day3 .* Weight; % .* multiplies the values between the two variables
% Actually normalizing the data for Day 3
Day3Norm = (Day3andWeights - min(Day3andWeights)) / (max(Day3andWeights) - min(Day3andWeights))
% Finding the mean of the normalized data for Day 3
normDay3mean = mean(Day3Norm)

% Creating a cell array with my results variables so I can then use writecell to 
% export them to a csv file.

AllResultsCell = {Day1andWeights, Day1Norm, day1toDay2, Day2andWeights, Day2Norm, day2toDay3, Day3andWeights, Day3Norm, femaleGroupIsoMean,femaleIsoIndMeans, maleGroupIsoMean, maleIsoIndMeans, normDay1mean,normDay2mean,normDay3mean}

% Taking the cell array and making it into a csv file

writecell(AllResultsCell, 'iso_results.csv')