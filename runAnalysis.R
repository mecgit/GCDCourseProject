#-------------------------------------------------------------------------------------------------
# run_analysis assumes that the Galaxy S biometric data has been downloaded from
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#   and extracted to the working directory.
#
#   Download and unzip the file from source URL to Dataset.ZIP in working directory using the code below
#
#   download.file(
#       url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#       ,destfile="Dataset.ZIP"
#       ,mode="wb")
#   unzip("Dataset.ZIP")
#---------------------------------------------------------------------------------------------------------- 
#
#
#   run_analysis performs these steps on the data extracted:
#
#     1.Merges the training and the test sets to create one data set.
#     2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#     3.Uses descriptive activity names to name the activities in the data set
#     4.Appropriately labels the data set with descriptive variable names. 
#     5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#------------------------------------------------------------------------------------------------------------

#
# 1. Merges the training and the test sets to create one data set.
#

# For the train data set, load subject ids, activity labels, and feature data
trainSubjects<-read.table("./UCI HAR Dataset/train/subject_train.txt")
trainActivities<-read.table("./UCI HAR Dataset/train/y_train.txt")
trainFeatures<-read.table("./UCI HAR Dataset/train/x_train.txt")

# For the test data set, load subject ids, activity labels, and feature data
testSubjects<-read.table("./UCI HAR Dataset/test/subject_test.txt")
testActivities<-read.table("./UCI HAR Dataset/test/y_test.txt")
testFeatures<-read.table("./UCI HAR Dataset/test/x_test.txt")
  
# Merge the training and test data for each type of data (subject ids, activity labels, and features)
allSubjects<-rbind(trainSubjects,testSubjects)
names(allSubjects)<-"subjectId"
allActivities<-rbind(trainActivities,testActivities)
names(allActivities)<-"activity"
allFeatures<-rbind(trainFeatures,testFeatures)

# Convert subject data to factors, there is no label needed
subjectId<-as.factor(allSubjects$subjectId)

# Convert the activity data to factors
activity<-as.factor(allActivities$activity)

# Add the subject and activity data to allFeatures
allData<-cbind(subjectId,activity,allFeatures)  

#
# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
#

# Load the names of the test/train features 
allFeatureNames<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors = FALSE)
names(allFeatureNames)<-c("id","name")

# Get the subjectId, activity, and any features containing mean() or std()
#   I include features such as -meanFreq() since these are means() of derived frequency data
#   but not other columns containing "mean" because the variable is not a mean itself.
myFeatureIndexes<-grep("-mean.*\\(\\)|-std.*\\(\\)",allFeatureNames$name)
myData<-allData[,c(1,2,myFeatureIndexes+2)]

#
#   3.Uses descriptive activity names to name the activities in the data set
#

# Load the activity labels to use a factors
activityLabels=read.table("./UCI HAR Dataset/activity_labels.txt")
names(activityLabels)<-c("level","label")

# Convert the activity data to factors and associate the labels
levels(myData$activity) <- activityLabels$label

#
#   4.Appropriately labels the data set with descriptive variable names. 
#

# Set the names for the feature columns (ignore the subjectId and activity columns since they already have names)
myFeatureNames<-gsub("-mean","-Mean",allFeatureNames$name[myFeatureIndexes])
myFeatureNames<-gsub("-std","-Std",myFeatureNames)
myFeatureNames<-gsub("\\(|\\)|-","",myFeatureNames)
myFeatureNames<-paste(myFeatureNames,"Average",sep="")
names(myData)[3:ncol(myData)] <- myFeatureNames

#
#   5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
library(reshape2)

# Melt into long form, because subjectId and activity are factors they are used as id.vars
myMeltedData<-melt(myData,id.var=c("subjectId","activity")) 

# Cast back into wide form.
myTidyData<-dcast(myMeltedData,subjectId + activity ~ variable,mean)

#Write out a tab delimited tidy dataset to the working directory
write.table(myTidyData,"Output.txt",sep="\t",row.names=FALSE)
