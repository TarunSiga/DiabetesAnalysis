# Importing required libraries into data set
library(tidyverse)
library(formattable)

# Importing the cleaned diabetes data set into R studio and creating a data frame
diabetes_df <- read.csv("C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/CleanedData/Cleaned_diabetes_data.csv")

# Checking the first five rows of the data frame
head(diabetes_df)

# Checking the last five rows of the data frame
tail(diabetes_df)

# Checking the number of rows of the data frame
nrow(diabetes_df)

# Checking the number of columns of the data frame
ncol(diabetes_df)

# Part - A
# Setting the seed to ensure the work reproducibility
set.seed(47)

# Selecting a random sample of 25 observations from the data frame
sample_df <- diabetes_df[sample(nrow(diabetes_df), 25, replace = FALSE), ]

# Checking the first five rows the created sample data
head(sample_df)

# Checking the first five rows the created sample data
tail(sample_df)

# Checking the number of rows of the sample data frame
nrow(sample_df)

# Checking the number of columns of the sample data frame
ncol(sample_df)

# Calculating the mean glucose of the sample data frame
glucose_mean_sample <- mean(sample_df$Glucose)

# Printing the mean
glucose_mean_sample

# Saving the value to file
write(glucose_mean_sample, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/glucose_mean_sample.txt")

# Calculating the max glucose of the sample data 
glucose_max_sample <- max(sample_df$Glucose)

# Printing the max glucose
glucose_max_sample

# Saving the value to file
write(glucose_max_sample, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/glucose_max_sample.txt")


# Considering the diabetes_df as the population data for this assignment
# Calculating the mean glucose of the population data
glucose_mean_population <- mean(diabetes_df$Glucose)

# Printing the mean
glucose_mean_population

# Saving the value to file
write(glucose_mean_population, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/glucose_mean_population.txt")

# Calculating the max glucose of the sample data 
glucose_max_population <- max(diabetes_df$Glucose)

# Printing the max glucose
glucose_max_population

# Saving the value to file
write(glucose_max_population, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/glucose_max_population.txt")

# Creating a bar chart for glucose mean of sample data and population data
# Combining each value of means into a data frame
counts <- c(glucose_mean_sample, glucose_mean_population)
counts

# Create a vector of the labels
labels <- c("Sample", "Population")

barplot(counts, names.arg = labels, main="Comparision of Mean Glucose",
        xlab="Glucose", ylab = "Count", col=c("blue","red"))

# It is observed that the sample mean glucose is slightly higher than the population mean glucose


# Importing the required library
library(formattable)

# Creating the percentages for showing the legend
percentages <- percent(counts/sum(counts))

# Creating a pie chart for glucose mean
pie(counts, labels = labels, main = "Comparison of Mean Glucose", col=c("blue","red"))

# Creating the legend
legend("topright", legend = labels, cex = 0.8, fill = c("blue","red"))


# Creating a bar chart for max glucose of sample data and population data
# Combining max values into a data frame
counts <- c(glucose_max_sample, glucose_max_population)
counts

# Create a vector of the labels
labels <- c("Sample", "Population")

barplot(counts, names.arg = labels, main="Comparision of Max Glucose",
        xlab="Glucose", ylab = "Count", col=c("blue","red"))

# It is observed that the population max glucose is slightly higher than the sample max glucose


# Importing the required library
library(formattable)

# Creating the percentages for showing the legend
percentages <- percent(counts/sum(counts))

# Creating a pie chart for glucose mean
pie(counts, labels = labels, main = "Comparison of Max Glucose", col=c("blue","red"))

# Creating the legend
legend("topright", legend = labels, cex = 0.8, fill = c("blue","red"))



# Part - B: Finding the 98th percentile of BMI

# Calculating the 98th percentile of sample data
BMI_sample_percentile <- quantile(sample_df$BMI, 0.98)

# Printing the 98th percentile of BMI for sample data
BMI_sample_percentile

# Saving the value to file
write(BMI_sample_percentile, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/BMI_Percentile_Sample.txt")

# Calculating the 98th percentile of population data
BMI_population_percentile <- quantile(diabetes_df$BMI, 0.98)

# Printing the 98th percentile of BMI for population data
BMI_population_percentile

# Saving the value to file
write(BMI_population_percentile, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/BMI_Percentile_Population.txt")


# Creating a bar chart for 98th percentile of BMI using sample and population data
# Combining max values into a data frame
counts <- c(BMI_sample_percentile, BMI_population_percentile)
counts

# Create a vector of the labels
labels <- c("Sample", "Population")

barplot(counts, names.arg = labels, main="Comparision of 98th Percentile of BMI",
        xlab="98th Percentile of BMI", ylab = "Count", col=c("red","green"))

# It is observed that the 98th percentile BMI for population is greater than the 98th percentile BMI of sample data


# Creating a pie chart for 98th percentile of BMI using sample and population data
# Combining max values into a data frame
counts <- c(BMI_sample_percentile, BMI_population_percentile)
counts

# Creating the percentages for showing the legend
percentages <- percent(counts/sum(counts))

# Creating a pie chart of 98th percentile of BMI
pie(counts, labels = labels, main = "Comparision of 98th Percentile of BMI", col=c("red","green"))

# Creating the legend
legend("topright", legend = labels, cex = 0.8, fill = c("red","green"))


#Part - C
# Setting the random seed for reproducibility
set.seed(10)

# Setting the bootstrap samples and its size
req_samples <- 500
req_samples_size <- 150

# Creating a for loop to loop over number of bootstraps
for (i in 1:req_samples_size) {
  sample_indices <- sample(nrow(diabetes_df), size = req_samples, replace = TRUE)
  sample_data <- diabetes_df[sample_indices, ]

}

# Checking top five rows of the newly bootstrapped data
head(sample_data )

# Checking last five rows of the newly bootstrapped data
tail(sample_data )

# Checking number of columns in created sample
ncol(sample_data)

# Checking number of observations in created sample
nrow(sample_data)

# Therefore, 500 samples were created (of 150 observations each) from the population data

# Calculating the mean of blood pressure from created sample data
bp_mean_sample <- mean(sample_data$BloodPressure)

# Checking the mean
bp_mean_sample

# Saving the value to a file
write(bp_mean_sample, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/bp_mean_sample.txt")


# Calculating the standard deviation of blood pressure from created sample data
bp_sd_sample <- sd(sample_data$BloodPressure)

# Checking the mean
bp_sd_sample

# Saving the value to a file
write(bp_sd_sample, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/bp_sd_sample.txt")


# Calculating the percentile of blood pressure from created sample data
bp_percentile_sample <- quantile(sample_data$BloodPressure, 0.98)

# Checking the mean
bp_percentile_sample

# Saving the value to a file
write(bp_percentile_sample, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/bp_percentile_sample.txt")



# Calculating the mean of blood pressure of population data
bp_mean_population <- mean(diabetes_df$BloodPressure)

# Checking the mean
bp_mean_population

# Saving the value to a file
write(bp_mean_population, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/bp_mean_population.txt")


# Calculating the standard deviation of blood pressure of population data
bp_sd_population <- sd(diabetes_df$BloodPressure)

# Checking the mean
bp_sd_population

# Saving the value to a file
write(bp_sd_population, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/bp_sd_population.txt")


# Calculating the percentile of blood pressure of population data
bp_percentile_population <- quantile(diabetes_df$BloodPressure, 0.98)

# Checking the mean
bp_percentile_population

# Saving the value to a file
write(bp_percentile_population, file = "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/Results/bp_percentile_population.txt")


# Making the comparisons of statistics between sample and population data
# Creating a bar chart for mean of blood pressure for sample and population data
# Combining max values into a data frame
counts <- c(bp_mean_sample, bp_mean_population)
counts

# Create a vector of the labels
labels <- c("Sample", "Population")

barplot(counts, names.arg = labels, main="Comparision of Mean of Blood Pressure",
        xlab="Average", ylab = "Count", col=c("orange","green"))

# It is observed that the mean of blood pressure is higher for population data than the sample data

# Creating a pie chart for mean of blood pressure for sample and population data
# Combining max values into a data frame
counts <- c(bp_mean_sample, bp_mean_population)
counts

library (formattable)
# Creating the percentages for showing the legend
percentages <- percent(counts/sum(counts))

# Creating a pie chart of mean of blood pressure
pie(counts, labels = labels, main = "Comparision of Mean of Blood Pressure", col=c("orange","green"))

# Creating the legend
legend("topright", legend = labels, cex = 0.8, fill = c("orange","green"))





# Creating a bar chart for standard deviation of blood pressure for sample and population data
# Combining max values into a data frame
counts <- c(bp_sd_sample, bp_sd_population)
counts

# Create a vector of the labels
labels <- c("Sample", "Population")

barplot(counts, names.arg = labels, main="Comparision of Standard Deviation of Blood Pressure",
        xlab="Standard Deviation", ylab = "Count", col=c("red","orange"))

# It is observed that the standard deviation of blood pressure is higher for sample data than the population data

# Creating a pie chart for standard deviation of blood pressure for sample and population data
# Combining max values into a data frame
counts <- c(bp_sd_sample, bp_sd_population)
counts

# Creating the percentages for showing the legend
percentages <- percent(counts/sum(counts))

# Creating a pie chart of mean of blood pressure
pie(counts, labels = labels, main = "Comparision of Standard Deviation of Blood Pressure", col=c("red","orange"))

# Creating the legend
legend("topright", legend = labels, cex = 0.8, fill = c("red","orange"))





# Creating a bar chart for percentile of blood pressure for sample and population data
# Combining max values into a data frame
counts <- c(bp_percentile_sample, bp_percentile_population)
counts

# Create a vector of the labels
labels <- c("Sample", "Population")

barplot(counts, names.arg = labels, main="Comparision of Percentile of Blood Pressure",
        xlab="Percentile", ylab = "Count", col=c("green","red"))

# It is observed that the percentile of blood pressure is higher for sample data than the population data

# Creating a pie chart for percentile of blood pressure for sample and population data
# Combining max values into a data frame
counts <- c(bp_percentile_sample, bp_percentile_population)
counts

# Creating the percentages for showing the legend
percentages <- percent(counts/sum(counts))

# Creating a pie chart of mean of blood pressure
pie(counts, labels = labels, main = "Comparision of Percentile of Blood Pressure", col=c("green","red"))

# Creating the legend
legend("topright", legend = labels, cex = 0.8, fill = c("green","red"))





