#1.	Merges the training and the test sets to create one data set.

library(data.table)

#Load File
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Dataset.zip")
unzip('Dataset.zip')     

#Load the activity and subject data
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")

#Load activity labels file
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("activityNumber", "activity"))

#Load features file
features <- read.table("./UCI HAR Dataset/features.txt", check.names = FALSE)

#Load X_train file
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", colClasses = rep("numeric", 561),col.names = features[[2]], check.names = FALSE)

#Load X_Test file
test <- read.table("./UCI HAR Dataset/test/X_test.txt", colClasses = rep("numeric", 561), col.names = features[[2]], check.names = FALSE)

#Place Data in table with table headings
prelimData <- cbind(rbind(subjectTrain, subjectTest), rbind(yTrain, yTest)) 

#Place labels from activity labels into activity column
prelimData$activity <- activityLabels[match(prelimData$activity, activityLabels[[1]]), 2]

#Combine Subject and Activity columns with the train and test data excluding  the mean() and std() variables
finalData <- cbind(prelimData, rbind(train, test)[,meanAndStd <- grep("mean()|std()", features[[2]])])

#Ambiguous Descriptions
ambiguousTitles <- c( "Acc", "BodyBody",  "^f", "freq",  "^t", "-mean\\(\\)", "-meanFreq\\(\\)",  "Gyro", "Mag", "-std\\(\\)")

#Clearer Descriptions titles
clearTitles <- c("Acceleration", "Body", "Frequency", "Frequency", "Time", "Mean", "MeanFrequency", "Gyroscope", "Magnitude", "STD")
  			   
#Loop through and replace ambiguousTitles Descriptions with Clearer Descriptions
for(i in seq_along(clearTitles)){
    names(finalData) <- sub(ambiguousTitles[i], clearTitles[i], names(finalData))
}

#Data set with the average of each variable for each activity and each subject
finalMeanData <- aggregate(finalData[, 3:length(finalData)],  list(activity = finalData$activity, subject = finalData$subject), mean)

#Write Data to output file
write.table(finalMeanData,file="tidy.csv",sep=",",row.names = FALSE)