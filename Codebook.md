# GCDCourseProject
Codebook forCoursera Getting and Cleaning Data Course Project

This codebook describes the output data contained in the file OUTPUT.TXT.  The file OUTPUT.TXT is a tab delimited data file with headers.  It consist of 181 observations of 81 variables.

The input data for this analysis can be obtained from [The input data can be obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip].  See the README for instructions on downloading the data.  For this analysis, only the subjectId, acvtivity, and columns representing means or standard deviations of underlying data where used.  All such columns have "mean" or "std" in there name. For more information see the file features_info.txt in the input data.

For this analysis, a "subjectId"" identifies the subject under test.  An "activity"" identifies the activity performed by the subject during the test.  The remaining variables are means of the associated input variable. So that the mean computed in this analysis can be distingushed from the means already computed in the input data, the variable name for the computed mean is the input variable name prefixed by the "MeanOf".  So that mean computed in this analysis can be assocciated with the input variable, no other changes have been name to the variable names.  

Readers should review the README file and examine the code and comments in run_analysis.R for more information.


|	Column Name	|
|	---------------------------	|
|	subjectId	|
|	activity	|
|	tBodyAccMeanXAverage	|
|	tBodyAccMeanYAverage	|
|	tBodyAccMeanZAverage	|
|	tBodyAccStdXAverage	|
|	tBodyAccStdYAverage	|
|	tBodyAccStdZAverage	|
|	tGravityAccMeanXAverage	|
|	tGravityAccMeanYAverage	|
|	tGravityAccMeanZAverage	|
|	tGravityAccStdXAverage	|
|	tGravityAccStdYAverage	|
|	tGravityAccStdZAverage	|
|	tBodyAccJerkMeanXAverage	|
|	tBodyAccJerkMeanYAverage	|
|	tBodyAccJerkMeanZAverage	|
|	tBodyAccJerkStdXAverage	|
|	tBodyAccJerkStdYAverage	|
|	tBodyAccJerkStdZAverage	|
|	tBodyGyroMeanXAverage	|
|	tBodyGyroMeanYAverage	|
|	tBodyGyroMeanZAverage	|
|	tBodyGyroStdXAverage	|
|	tBodyGyroStdYAverage	|
|	tBodyGyroStdZAverage	|
|	tBodyGyroJerkMeanXAverage	|
|	tBodyGyroJerkMeanYAverage	|
|	tBodyGyroJerkMeanZAverage	|
|	tBodyGyroJerkStdXAverage	|
|	tBodyGyroJerkStdYAverage	|
|	tBodyGyroJerkStdZAverage	|
|	tBodyAccMagMeanAverage	|
|	tBodyAccMagStdAverage	|
|	tGravityAccMagMeanAverage	|
|	tGravityAccMagStdAverage	|
|	tBodyAccJerkMagMeanAverage	|
|	tBodyAccJerkMagStdAverage	|
|	tBodyGyroMagMeanAverage	|
|	tBodyGyroMagStdAverage	|
|	tBodyGyroJerkMagMeanAverage	|
|	tBodyGyroJerkMagStdAverage	|
|	fBodyAccMeanXAverage	|
|	fBodyAccMeanYAverage	|
|	fBodyAccMeanZAverage	|
|	fBodyAccStdXAverage	|
|	fBodyAccStdYAverage	|
|	fBodyAccStdZAverage	|
|	fBodyAccMeanFreqXAverage	|
|	fBodyAccMeanFreqYAverage	|
|	fBodyAccMeanFreqZAverage	|
|	fBodyAccJerkMeanXAverage	|
|	fBodyAccJerkMeanYAverage	|
|	fBodyAccJerkMeanZAverage	|
|	fBodyAccJerkStdXAverage	|
|	fBodyAccJerkStdYAverage	|
|	fBodyAccJerkStdZAverage	|
|	fBodyAccJerkMeanFreqXAverage	|
|	fBodyAccJerkMeanFreqYAverage	|
|	fBodyAccJerkMeanFreqZAverage	|
|	fBodyGyroMeanXAverage	|
|	fBodyGyroMeanYAverage	|
|	fBodyGyroMeanZAverage	|
|	fBodyGyroStdXAverage	|
|	fBodyGyroStdYAverage	|
|	fBodyGyroStdZAverage	|
|	fBodyGyroMeanFreqXAverage	|
|	fBodyGyroMeanFreqYAverage	|
|	fBodyGyroMeanFreqZAverage	|
|	fBodyAccMagMeanAverage	|
|	fBodyAccMagStdAverage	|
|	fBodyAccMagMeanFreqAverage	|
|	fBodyBodyAccJerkMagMeanAverage	|
|	fBodyBodyAccJerkMagStdAverage	|
|	fBodyBodyAccJerkMagMeanFreqAverage	|
|	fBodyBodyGyroMagMeanAverage	|
|	fBodyBodyGyroMagStdAverage	|
|	fBodyBodyGyroMagMeanFreqAverage	|
|	fBodyBodyGyroJerkMagMeanAverage	|
|	fBodyBodyGyroJerkMagStdAverage	|
|	fBodyBodyGyroJerkMagMeanFreqAverage	|
