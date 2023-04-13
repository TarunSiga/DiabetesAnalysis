# Importing the diabetes.csv file into R studio and creating a data frame
diabetes_df <- read.csv("C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/RawData/diabetes.csv")

# Checking the first five rows of the diabetes data frame
head(diabetes_df)

# Checking the last five rows of the diabetes data frame
tail(diabetes_df)

# Checking the number of rows of the diabetes data frame
nrow(diabetes_df)

# Checking the number of columns of the diabetes data frame
ncol(diabetes_df)

# Checking whether the created data frame has 'NA' values or not
is.na(diabetes_df)

# Total number of 'NA'(Null) values in the data frame
sum(is.na(diabetes_df))

# Therefore, it is observed that there are no NA values in the data set.

# Now, checking the variable names of the diabetes data set
names(diabetes_df)

# It is observed that the names of all the variables are in proper format. There is no need to change in anything.

# Saving the cleaned data frame to disk
write.csv(diabetes_df, "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 2/CleanedData/Cleaned_diabetes_data.csv")
