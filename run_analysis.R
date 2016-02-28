# Getting and Cleaning Data Course Project
# By Sanderson Lima

# This R script does the following:
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.

run_analysis<-function(){
       # Loading required packages
       library(dplyr)
       library(data.table)
       
       # Setting the working directory
       setwd("C:/Users/San/Documents/COURSERA/DATA SCIENCE/Getting and Cleaning Data/PROJECT")
       
       # Downloading the dataset from the website
       if(!file.exists("UCI HAR Dataset")){
              dir.create("UCI HAR Dataset")
       }
       Url.link<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
       
       download.file(Url.link, destfile = "./UCI HAR Dataset.zip")
       download.date<-date()
       
       # Unzipping the DataSet
       unzip(zipfile="./UCI HAR Dataset.zip")
       
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
}