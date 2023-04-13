1. The data set diabetes.csv contains 768 records of patients with 10 attributes. 
The attributes in the dataset were Pregnancies, Glucose, BloodPressure, SkinThickness, Insulin, BMI,
DiabetesPedigreeFunction, Age, and Outcome. Outcome is a repsonse varibale whihc is binary.
In outcome, 1 shows the patient has diabetes and 0 shows that the patient has no diabetes. As the part of analysis, the raw diabetes dataset is checked for null values and then it should be cleaned. 
The cleaned data set has been stored in CleanedData folder. This cleaned data has been used for the analysis.
For this assignment, this data set been used as population data. 

Part - a: In this part, 25 observations were randomly created named sample_df from population data. Later, the mean and max values of glucose 
were calculated using the created sample data. And these values were compared same statistics of the population data. TO compare these statistics,
bar plot and pie charts were created foe each static separatesly. 

Part - b: In this part, the 98th percentile of BMI of the sample data is calculated and compared with the 98th
percentile of BMI of population data. These two values were compared by creating a bar plot and pie chart. 

Part - c: In this part, created a sample data of 500 samples (of 150 observation each) from population data by using bootstrap.
The mean, standard deviation, percentile for blood pressure were calculated using the sample data. And these values
were compared with the statistics of the population data. For comparision, bar plots and pie charts were created. 

The DataCleaning, and DataAnalysis files were found under src folder. The statistics, and plots were saved in the results section. 