## Getting and Cleaning Data - Project Assingment
## Author: Andre Felix Miertschink
## Date  : 17/03/2020
##
## This scripts is an assignment project for the course Getting and Cleaning 
## Data Course of Coursera
##
## The script does:
## a. Download and extract the dataset to current work directory
## b. open all required datasets
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each
## measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set
##    with the average of each variable for each activity and each subject.


## Download and extract the dataset to current work directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file( url, destfile = "dataset.zip" )
unzip("dataset.zip")

# Opening dataset ; Features
tb_features <- read.table("./UCI HAR Dataset/features.txt")
tb_activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

tb_train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
tb_train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
tb_train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

tb_test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
tb_test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
tb_test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Setting the column names. Must be same column name to use merge using cbind
colnames(tb_train_subject) <- 'subjectId'
colnames(tb_train_x) <- tb_features[,2]
colnames(tb_train_y) <- 'activityId'

colnames(tb_test_subject) <- 'subjectId'
colnames(tb_test_x) <- tb_features[,2]
colnames(tb_test_y) <- 'activityId'

colnames(tb_activities) <- c('activityId','activityType')
colnames(tb_train_subject) <- 'subjectId'


# Opening and merging data  [REQUIREMENT 1.]
tb_train_data <- cbind(tb_train_x, tb_train_y,tb_train_subject)
tb_test_data  <- cbind(tb_test_x, tb_test_y,tb_test_subject)
# Merging rows from train and test 
tb_all_data <- rbind(tb_train_data, tb_test_data)


# Creating a new table with only the required columns [REQUIREMENT 2.]
toMatch <- c("subjectId", "activityId", "*mean\\(\\)*", "*std\\(\\)*")   # Able to adjust the matching criteria
# As per request, onl;y considering subject ID, activity ID, mean() and std(). 
# For example meanFreq() should not be included
all_data_column_names <- colnames(tb_all_data)
required_columns <- grep(paste(toMatch,collapse="|"), all_data_column_names)
required_column_names <- all_data_column_names[required_columns]
tb_required_data <- tb_all_data[ ,required_column_names]

# Setting the descriptive activity to the required dataset  [REQUIREMENT 3.]
tb_required_data$activityId <- factor(tb_required_data$activityId, levels = tb_activities$activityId, labels = tb_activities$activityType)


# Appropriately labels the data set with descriptive variable names. [REQUIREMENT 4.]
required_column_names <- gsub('-mean\\(\\)', 'Mean', required_column_names)
required_column_names <- gsub('-std\\(\\)', 'Std', required_column_names)
required_column_names <- gsub('-', '', required_column_names)
colnames(tb_required_data) <- required_column_names

# Adjusting the column name from activityid to activity
# Step could have been avoided by setting the proper column name at beginning, but left this way for better understanding
names(tb_required_data)[names(tb_required_data) == "activityId"] <- "activity"


# Create an independent tidy data set with the average of each variable for each activity and each subject. [REQUIREMENT 5.]
library(reshape2) # required for melt
tb_independent_data <- melt(tb_required_data, id = c("subjectId", "activity"))
tb_tidy_data <- dcast(tb_independent_data, subjectId + activity ~ variable, mean)

write.table(tb_tidy_data, "tidy_dataset.txt", row.names = FALSE)

