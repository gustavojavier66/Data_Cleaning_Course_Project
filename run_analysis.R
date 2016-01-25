library(data.table)

# 0. load test and training sets and the activities
# Use the course CDN instead of the original UCI zip file.
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Dataset.zip")
unzip("Dataset.zip")

testData <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
testDataY <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
testDataSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)

trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
trainDataY <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
trainDataSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)

# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,colClasses="character")
testDataY$V1 <- factor(testDataY$V1,levels=activities$V1,labels=activities$V2)
trainDataY$V1 <- factor(trainDataY$V1,levels=activities$V1,labels=activities$V2)

# 4. Appropriately labels the data set with descriptive variable names.
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,colClasses="character")
colnames(testData)<-features$V2
colnames(trainData)<-features$V2
colnames(testDataY)<-c("Activity")
colnames(trainDataY)<-c("Activity")
colnames(testDataSubject)<-c("Subject")
colnames(trainDataSubject)<-c("Subject")

# 1. Merges the training and the test sets to create one data set.
testData<-cbind(testData,testDataY)
testData<-cbind(testData,testDataSubject)
trainData<-cbind(trainData,trainDataY)
trainData<-cbind(trainData,trainDataSubject)
finalData<-rbind(testData,trainData)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
finalDataMean<-sapply(finalData,mean,na.rm=TRUE)
finalDataSD<-sapply(finalData,sd,na.rm=TRUE)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
DT <- data.table(finalData)
tidy<-DT[,lapply(.SD,mean),by="Activity,Subject"]
write.table(tidy,file="tidy.csv",sep=",",row.names = FALSE)