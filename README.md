# GCDCourseProject
Coursera Getting and Cleaning Data Course Project

This project organizes and summarizes a dataset using Tidy principles. An R script, run_analysis.R, contains the R code to 
to load dataset, organize data, and output a tidy dataset that provides the mean for each input data column by subjectId, and activity.

The input data can be obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip].
The run_analysis.R script assumes that this file has been downloaded and extracted to the R working directory. An R script has been provided below for this purpose:

```
   download.file(
       url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
       ,destfile="Dataset.ZIP"
       ,mode="wb")
   unzip("Dataset.ZIP")
```
The script run_analysis.R performs these steps on the extracted datasets:

   1. Merges the training and the test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
   3. Uses descriptive activity names to name the activities in the data set
   4. Appropriately labels the data set with descriptive variable names. 
   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Reviewers should review the codebook and examine the code and comments in run_analysis.R for more information.

