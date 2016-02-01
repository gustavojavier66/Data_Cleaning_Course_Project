# CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

### The data source

* Location of original Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Location of description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data Set Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### The Raw Data

The Raw Data File contained the following:

README.txt

features.txt: 			Names of the 561 features.
activity_labels.txt: 	Names and IDs for each of the 6 activities.

X_train.txt: 			7352 observations of the 561 features, for 21 of the 30 volunteers.
subject_train.txt: 		A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
y_train.txt: 			A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

X_test.txt: 			2947 observations of the 561 features, for 9 of the 30 volunteers.
subject_test.txt: 		A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
y_test.txt: 			A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.


###Variables
TimeBodyAccelerationMean-X
TimeBodyAccelerationMean-Y             
TimeBodyAccelerationMean-Z              
TimeBodyAccelerationSTD-X              
TimeBodyAccelerationSTD-Y             
TimeBodyAccelerationSTD-Z              
TimeGravityAccelerationMean-X             
TimeGravityAccelerationMean-Y              
TimeGravityAccelerationMean-Z              
TimeGravityAccelerationSTD-X              
TimeGravityAccelerationSTD-Y              
TimeGravityAccelerationSTD-Z              
TimeBodyAccelerationJerkMean-X              
TimeBodyAccelerationJerkMean-Y              
TimeBodyAccelerationJerkMean-Z             
TimeBodyAccelerationJerkSTD-X              
TimeBodyAccelerationJerkSTD-Y             
TimeBodyAccelerationJerkSTD-Z              
TimeBodyGyroscopeMean-X              
TimeBodyGyroscopeMean-Y             
TimeBodyGyroscopeMean-Z              
TimeBodyGyroscopeSTD-X              
TimeBodyGyroscopeSTD-Y              
TimeBodyGyroscopeSTD-Z              
TimeBodyGyroscopeJerkMean-X              
TimeBodyGyroscopeJerkMean-Y             
TimeBodyGyroscopeJerkMean-Z             
TimeBodyGyroscopeJerkSTD-X             
TimeBodyGyroscopeJerkSTD-Y              
TimeBodyGyroscopeJerkSTD-Z              
TimeBodyAccelerationMagnitudeMean              
TimeBodyAccelerationMagnitudeSTD              
TimeGravityAccelerationMagnitudeMean              
TimeGravityAccelerationMagnitudeSTD             
TimeBodyAccelerationJerkMagnitudeMean              
TimeBodyAccelerationJerkMagnitudeSTD              
TimeBodyGyroscopeMagnitudeMean              
TimeBodyGyroscopeMagnitudeSTD              
TimeBodyGyroscopeJerkMagnitudeMean              
TimeBodyGyroscopeJerkMagnitudeSTD             
FrequencyBodyAccelerationMean-X              
FrequencyBodyAccelerationMean-Y             
FrequencyBodyAccelerationMean-Z              
FrequencyBodyAccelerationSTD-X             
FrequencyBodyAccelerationSTD-Y              
FrequencyBodyAccelerationSTD-Z              
FrequencyBodyAccelerationMeanFrequency-X              
FrequencyBodyAccelerationMeanFrequency-Y              
FrequencyBodyAccelerationMeanFrequency-Z              
FrequencyBodyAccelerationJerkMean-X              
FrequencyBodyAccelerationJerkMean-Y              
FrequencyBodyAccelerationJerkMean-Z             
 FrequencyBodyAccelerationJerkSTD-X              
FrequencyBodyAccelerationJerkSTD-Y              
FrequencyBodyAccelerationJerkSTD-Z              
FrequencyBodyAccelerationJerkMeanFrequency-X              
FrequencyBodyAccelerationJerkMeanFrequency-Y              
FrequencyBodyAccelerationJerkMeanFrequency-Z              
FrequencyBodyGyroscopeMean-X              
FrequencyBodyGyroscopeMean-Y              
FrequencyBodyGyroscopeMean-Z              
FrequencyBodyGyroscopeSTD-X              
FrequencyBodyGyroscopeSTD-Y              
FrequencyBodyGyroscopeSTD-Z              
FrequencyBodyGyroscopeMeanFrequency-X              
FrequencyBodyGyroscopeMeanFrequency-Y              
FrequencyBodyGyroscopeMeanFrequency-Z              
FrequencyBodyAccelerationMagnitudeMean              
FrequencyBodyAccelerationMagnitudeSTD              
FrequencyBodyAccelerationMagnitudeMeanFrequency              
FrequencyBodyAccelerationJerkMagnitudeMean             
FrequencyBodyAccelerationJerkMagnitudeSTD              
FrequencyBodyAccelerationJerkMagnitudeMeanFrequency              
FrequencyBodyGyroscopeMagnitudeMean              
FrequencyBodyGyroscopeMagnitudeSTD              
FrequencyBodyGyroscopeMagnitudeMeanFrequency              
FrequencyBodyGyroscopeJerkMagnitudeMean             
FrequencyBodyGyroscopeJerkMagnitudeSTD              
FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency

### Steps peformed on data (Not necessarily in this order).

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
