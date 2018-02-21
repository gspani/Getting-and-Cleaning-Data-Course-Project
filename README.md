# Getting-and-Cleaning-Data-Course-Project

**Overview:**

This project is to demonstrate the ability to collect, work with, and clean a data set, that can be used for later analysis.


**Summary:**

The data for the project is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Please download and unzip the file, which should create a folder named “UCI HAR Dataset” and set this folder as the working directory before running the R script.

The R script is called run_analysis.R and it does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


**Additional Information:**

The R script has comments at appropriate places explaining what the code does.

You can find additional information about the variables, data and transformations in the CodeBook.MD file.

The final output, a tidy dataset, is in tidydata.txt. 
