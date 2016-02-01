# Data_Cleaning_Course_Project

-----------------------------------------------------------------------------------------------------------------
###Intro
-----------------------------------------------------------------------------------------------------------------
The following repository holds my worked for the course project for "Getting and Cleaning data" Coursera Course.  This is the third course in the Data Science program.

-----------------------------------------------------------------------------------------------------------------
###Raw Data (Explanation of each file)
-----------------------------------------------------------------------------------------------------------------
features.txt: 			Names of the 561 features.
activity_labels.txt: 	Names and IDs for each of the 6 activities.

X_train.txt: 			7352 observations of the 561 features, for 21 of the 30 volunteers.
subject_train.txt: 		A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
y_train.txt: 			A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

X_test.txt: 			2947 observations of the 561 features, for 9 of the 30 volunteers.
subject_test.txt: 		A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
y_test.txt: 			A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.

-----------------------------------------------------------------------------------------------------------------
###Overview
-----------------------------------------------------------------------------------------------------------------
30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.

-----------------------------------------------------------------------------------------------------------------
###Processing Steps
-----------------------------------------------------------------------------------------------------------------

1. Download the run_analysis.R into the directory that is your current working directory for RStudio.
2. Run the Source function using the run_analysis.R file as the paramater  Source(run_analysis.R) dirctories and tiny.csv will be created.
