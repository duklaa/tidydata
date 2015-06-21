#load needed libraries
library(dplyr)
library(tidyr)


#read the names for the features (this are the descriptive variable names)
features <- read.csv("UCI HAR Dataset/features.txt", header=FALSE, sep="", col.names=c("FeatureNumber", "FeatureName"), colClasses=c("integer", "character"))

#read the names for the activities (these are the lables for the factor)
activity_names <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="", col.names=c("ActivityNumber", "ActivityName"), header=FALSE)

#read the three pieces of the training set and bind them together
#label the data set with descriptive variable names while reading
activity_train <- read.csv("UCI HAR Dataset/train/y_train.txt", header=FALSE, col.names="Activity")
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names="SubjectID")
data_train <- read.csv("UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="", col.names=features$FeatureName)
data_train_full <- cbind(subject_train, activity_train, data_train)

#read the three pieces of the test set and bind them together
#label the data set with descriptive variable names while reading
activity_test <- read.csv("UCI HAR Dataset/test/y_test.txt", header=FALSE, col.names="Activity")
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names="SubjectID")
data_test <- read.csv("UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="", col.names=features$FeatureName)
data_test_full <- cbind(subject_test, activity_test, data_test)

#merge training and test sets and convert to data frame table for use with dplyr. Delete the original dataframe.
data_merged <- rbind(data_train_full, data_test_full)
data <- tbl_df(data_merged)
rm("data_merged")

#extract only the measurements on the mean and the standard deviation for each measurement
data <- select(data, SubjectID, Activity, contains(".mean.."), contains(".std.."))

#name the activities in the data set with descriptive activity names
data <- mutate(data, Activity=factor(Activity, labels=activity_names$ActivityName))


#Create a tidy data set with the averages of each variable for each activity and each subject
data_tidy <- aggregate(.~ SubjectID + Activity, data, mean, na.rm=TRUE)
write.table(data_tidy, file = "tidydata.txt", row.name=FALSE)