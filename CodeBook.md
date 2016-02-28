---
title: "Code Book"
author: "By Sanderson Lima"
date: "02-27-2016"
output: html_document
---

###This code book summarizes the resulting data fields in `Tidy_Data.txt`.


#Code Book: Description of the DATA
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to indicate frequency domain signals).

#Code Book: Description of name abbreviations of measurements
The file name is iniciated with the "subject" - leading t or f is based on time or frequency measurements - and than it was fallowed by the name of activity performed when the corresponding measurements were taken, the data sensor, and the type of information on the movement. Following the description code bellow: 

Body = related to body movement.
Gravity = acceleration of gravity
Acc = accelerometer measurement
Gyro = gyroscopic measurements
Jerk = sudden movement acceleration
Mag = magnitude of movement

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.

These signals were used to estimate variables of the feature vector for each pattern:
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. They total 33 measurements including the 3 dimensions - the X,Y, and Z axes:

* `tBodyAcc-XYZ`
* `tGravityAcc-XYZ`
* `tBodyAccJerk-XYZ`
* `tBodyGyro-XYZ`
* `tBodyGyroJerk-XYZ`
* `tBodyAccMag`
* `tGravityAccMag`
* `tBodyAccJerkMag`
* `tBodyGyroMag`
* `tBodyGyroJerkMag`
* `fBodyAcc-XYZ`
* `fBodyAccJerk-XYZ`
* `fBodyGyro-XYZ`
* `fBodyAccMag`
* `fBodyAccJerkMag`
* `fBodyGyroMag`
* `fBodyGyroJerkMag`


The set of variables that were estimated from these signals are:


* `mean(): Mean value`
* `std(): Standard deviation`

It means, that are calculated the mean and the standard deviation for each subject, activity and measurement data.

## Experimental Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. So, we have the following activity labels:

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test



Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Bellow, it is shown the struture of the final Data Table:

Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  69 variables:
* `$ subject                                     : int  1 1 1 1 1 1 2 2 2 2 ...`
* `$ activityName                                : chr  "LAYING" "SITTING" "STANDING" "WALKING" ...`
* `$ activityNum                                 : num  6 4 5 1 3 2 6 4 5 1 ...`
* `$ TimeBodyAccelerometer-Mean-X                : num  0.222 0.261 0.279 0.277 0.289 ...`
* `$ TimeBodyAccelerometer-Mean-Y                : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...`
* `$ TimeBodyAccelerometer-Mean-Z                : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...`
* `$ TimeBodyAccelerometer-StdD-X                : num  -0.928 -0.977 -0.996 -0.284 0.03 ...`
* `$ TimeBodyAccelerometer-StdD-Y                : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...`
* `$ TimeBodyAccelerometer-StdD-Z                : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...`
* `$ TimeGravityAccelerometer-Mean-X             : num  -0.249 0.832 0.943 0.935 0.932 ...`
* `$ TimeGravityAccelerometer-Mean-Y             : num  0.706 0.204 -0.273 -0.282 -0.267 ...`
* `$ TimeGravityAccelerometer-Mean-Z             : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...`
* `$ TimeGravityAccelerometer-StdD-X             : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...`
* `$ TimeGravityAccelerometer-StdD-Y             : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...`
* `$ TimeGravityAccelerometer-StdD-Z             : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...`
* `$ TimeBodyAccelerometerJerk-Mean-X            : num  0.0811 0.0775 0.0754 0.074 0.0542 ...`
* `$ TimeBodyAccelerometerJerk-Mean-Y            : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...`
* `$ TimeBodyAccelerometerJerk-Mean-Z            : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...`
* `$ TimeBodyAccelerometerJerk-StdD-X            : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...`
* `$ TimeBodyAccelerometerJerk-StdD-Y            : num  -0.924 -0.981 -0.986 0.067 -0.102 ...`
* `$ TimeBodyAccelerometerJerk-StdD-Z            : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...`
* `$ TimeBodyGyroscope-Mean-X                    : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...`
* `$ TimeBodyGyroscope-Mean-Y                    : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...`
* `$ TimeBodyGyroscope-Mean-Z                    : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...`
* `$ TimeBodyGyroscope-StdD-X                    : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...`
* `$ TimeBodyGyroscope-StdD-Y                    : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...`
* `$ TimeBodyGyroscope-StdD-Z                    : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...`
* `$ TimeBodyGyroscopeJerk-Mean-X                : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...`
* `$ TimeBodyGyroscopeJerk-Mean-Y                : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...`
* `$ TimeBodyGyroscopeJerk-Mean-Z                : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...`
* `$ TimeBodyGyroscopeJerk-StdD-X                : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...`
* `$ TimeBodyGyroscopeJerk-StdD-Y                : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...`
* `$ TimeBodyGyroscopeJerk-StdD-Z                : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...`
* `$ TimeBodyAccelerometerMagnitude-Mean         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...`
* `$ TimeBodyAccelerometerMagnitude-StdD         : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...`
* `$ TimeGravityAccelerometerMagnitude-Mean      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...`
* `$ TimeGravityAccelerometerMagnitude-StdD      : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...`
* `$ TimeBodyAccelerometerJerkMagnitude-Mean     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...`
* `$ TimeBodyAccelerometerJerkMagnitude-StdD     : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...`
* `$ TimeBodyGyroscopeMagnitude-Mean             : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...`
* `$ TimeBodyGyroscopeMagnitude-StdD             : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...`
* `$ TimeBodyGyroscopeJerkMagnitude-Mean         : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...`
* `$ TimeBodyGyroscopeJerkMagnitude-StdD         : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...`
* `$ FrequencyBodyAccelerometer-Mean-X           : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...`
* `$ FrequencyBodyAccelerometer-Mean-Y           : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...`
* `$ FrequencyBodyAccelerometer-Mean-Z           : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...`
* `$ FrequencyBodyAccelerometer-StdD-X           : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...`
* `$ FrequencyBodyAccelerometer-StdD-Y           : num  -0.834 -0.917 -0.972 0.056 -0.113 ...`
* `$ FrequencyBodyAccelerometer-StdD-Z           : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...`
* `$ FrequencyBodyAccelerometerJerk-Mean-X       : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...`
* `$ FrequencyBodyAccelerometerJerk-Mean-Y       : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...`
* `$ FrequencyBodyAccelerometerJerk-Mean-Z       : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...`
* `$ FrequencyBodyAccelerometerJerk-StdD-X       : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...`
* `$ FrequencyBodyAccelerometerJerk-StdD-Y       : num  -0.932 -0.983 -0.987 0.107 -0.135 ...`
* `$ FrequencyBodyAccelerometerJerk-StdD-Z       : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...`
* `$ FrequencyBodyGyroscope-Mean-X               : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...`
* `$ FrequencyBodyGyroscope-Mean-Y               : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...`
* `$ FrequencyBodyGyroscope-Mean-Z               : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...`
* `$ FrequencyBodyGyroscope-StdD-X               : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...`
* `$ FrequencyBodyGyroscope-StdD-Y               : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...`
* `$ FrequencyBodyGyroscope-StdD-Z               : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...`
* `$ FrequencyBodyAccelerometerMagnitude-Mean    : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...`
* `$ FrequencyBodyAccelerometerMagnitude-StdD    : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...`
* `$ FrequencyBodyAccelerometerJerkMagnitude-Mean: num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...`
* `$ FrequencyBodyAccelerometerJerkMagnitude-StdD: num  -0.922 -0.982 -0.993 -0.103 -0.104 ...`
* `$ FrequencyBodyGyroscopeMagnitude-Mean        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...`
* `$ FrequencyBodyGyroscopeMagnitude-StdD        : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...`
* `$ FrequencyBodyGyroscopeJerkMagnitude-Mean    : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...`
* `$ FrequencyBodyGyroscopeJerkMagnitude-StdD    : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...`
 
 
So, the tidy data set a set of variables for each activity and each subject. 10299 instances are split into 180 groups (30 subjects and 6 activities) and 66 mean and standard deviation features are averaged for each group. The resulting data table has 180 rows and 69 columns – 33 Mean variables + 33 Standard deviation variables + 1 Subject( 1 of of the 30 test subjects) + ActivityName + ActivityNum . The tidy data set’s first row is the header containing the names for each column.

## APPENDIX - Summary of the Script Description

The following files were necessary to run the script:

* `test/subject_test.txt`
* `train/subject_train.txt`
* `test/X_test.txt`
* `train/X_train.txt`
* `test/y_test.txt`
* `train/y_train.txt`
* `features.txt`
* `activity_labels.txt`

So, at first we download and put the input data in variables (data tables), as we can see in this part of the script:

```{r}
       # Downloading the dataset from the website
       if(!file.exists("UCI HAR Dataset")){
       dir.create("UCI HAR Dataset")
       }
       fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
       
       download.file(fileUrl, destfile = "./UCI HAR Dataset.zip", method ="curl")
       download.date<-date()
       

       # Unzip DataSet to /data directory
       unzip(zipfile="./UCI HAR Dataset.zip",exdir="./data")
       Load required packages

       # Loading the files into R
       fPath <- "./UCI HAR Dataset"
       SubjectTrain <- tbl_df(read.table(file.path(fPath, "train", "subject_train.txt")))
       SubjectTest  <- tbl_df(read.table(file.path(fPath, "test" , "subject_test.txt" )))
       ActivityTrain <- tbl_df(read.table(file.path(fPath, "train", "Y_train.txt")))
       ActivityTest  <- tbl_df(read.table(file.path(fPath, "test" , "Y_test.txt" )))
       TrainData <- tbl_df(read.table(file.path(fPath, "train", "X_train.txt" )))
       TestData  <- tbl_df(read.table(file.path(fPath, "test" , "X_test.txt" )))
       
       
       # Merging the training and the test sets to create one data set
       SubjectJoin <- rbind(SubjectTrain, SubjectTest)
       setnames(SubjectJoin, "V1", "subject")
       ActivityJoin<- rbind(ActivityTrain, ActivityTest)
       setnames(ActivityJoin, "V1", "activityNum")
       
       # Combining the training and test data files
       fTable <- rbind(TrainData, TestData)
       
       # Setting the variable names according to feature
       dataFeatures <- tbl_df(read.table(file.path(fPath, "features.txt")))
       setnames(dataFeatures, names(dataFeatures), c("featureNum", "featureName"))
       colnames(fTable) <- dataFeatures$featureName
       
       # Setting column names for activity labels
       activityLabels<- tbl_df(read.table(file.path(fPath, "activity_labels.txt")))
       setnames(activityLabels, names(activityLabels), c("activityNum","activityName"))
       
       # Merging columns
       alldataSubjAct<- cbind(SubjectJoin, ActivityJoin)
       fTable <- cbind(alldataSubjAct, fTable)
       
       
       # Extracting only the measurements on the mean and standard deviation for each measurement.
       
       # Reading "features.txt" and extracting only the mean and standard deviation
       dataFeaturesMeanStd <- grep("mean\\(\\)|std\\(\\)",dataFeatures$featureName,value=TRUE) #var name
       
       # Taking only measurements for the mean and standard deviation and add "subject","activityNum"
       dataFeaturesMeanStd <- union(c("subject","activityNum"), dataFeaturesMeanStd)
       fTable<- subset(fTable,select=dataFeaturesMeanStd) 
       
       
       # Using descriptive activity names to name the activities in the data set
       # Setting the name of activity into fTable
       fTable <- merge(activityLabels, fTable , by="activityNum", all.x=TRUE)
       fTable$activityName <- as.character(fTable$activityName)
       
       # Creating a fTable with variable means sorted by subject and Activity
       fTable$activityName <- as.character(fTable$activityName)
       dataAggr<- aggregate(. ~ subject - activityName, data = fTable, mean) 
       fTable<- tbl_df(arrange(dataAggr,subject,activityName))
       
       # Setting appropriate labels (descriptive variable names)
       names(fTable)<-gsub("std\\(\\)", "StdD", names(fTable))
       names(fTable)<-gsub("mean\\(\\)", "Mean", names(fTable))
       names(fTable)<-gsub("^t", "Time", names(fTable))
       names(fTable)<-gsub("^f", "Frequency", names(fTable))
       names(fTable)<-gsub("Acc", "Accelerometer", names(fTable))
       names(fTable)<-gsub("Gyro", "Gyroscope", names(fTable))
       names(fTable)<-gsub("Mag", "Magnitude", names(fTable))
       names(fTable)<-gsub("BodyBody", "Body", names(fTable))
       
       head(str(fTable),6)
       
       # Writing the final tidy data set to a text file on disk
       write.table(fTable, "Tidy_Data.txt", row.name=FALSE)

```