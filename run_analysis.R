## load the required packages
library(dplyr)

##Download DataSet

filename <- "Assignment3.zip"

##Check if the file already exists
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method = "curl")
}


## Check if folder exists
if (!file.exists("UCI HAR Dataset")){
  unzip(filename)
}

##Create data frames
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n", "function_lists")) ##
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity_names"))
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names ="subject")
test_X <- read.table("UCI HAR Dataset/test/x_test.txt", col.names = features$function_lists)
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names ="subject")
train_X <- read.table("UCI HAR Dataset/train/x_train.txt", col.names = features$function_lists)
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

##==========================================================================================================
## Cleaning the data sets
##=============================================================================================================

## 1. Merge the training and test data sets into one data set 
x_dataset <- rbind(train_X, test_X)
y_dataset <- rbind(train_y, test_y)
subject_dataset <- rbind(train_subject, test_subject)
merged_dataset <- cbind(subject_dataset, x_dataset, y_dataset)
head(merged_dataset)

## 2. Extract only the measurements on the mean and standard deviation for each measurement.

cleanData <- merged_dataset %>% select(subject, code, contains("mean"), contains("std"))

## 3. Uses descriptive activity names to name the activities in the data set

cleanData$code <- activities[cleanData$code, 2]

## Appropriately labels the data set with descriptive variable names.

names(cleanData)[2] <- "Activity" 
names(cleanData)[1]<- "Subject"
names(cleanData) <- gsub("tBody", "TimeBody", names(cleanData))
names(cleanData) <- gsub("^t", "Time", names(cleanData))
names(cleanData) <- gsub("^f", "Frequency", names(cleanData))
names(cleanData) <- gsub("Acc", "Acclerometer", names(cleanData))
names(cleanData) <- gsub("mean()", "Mean", names(cleanData), ignore.case = TRUE)
names(cleanData) <- gsub("std()", "STD", names(cleanData), ignore.case = TRUE)
names(cleanData) <- gsub("freq()", "Frequency", names(cleanData), ignore.case = TRUE)
names(cleanData) <- gsub("Frequencyuency", "Frequency", names(cleanData))
names(cleanData) <- gsub("Gyro", "Gyroscope", names(cleanData))
names(cleanData) <- gsub("BodyBody", "Body", names(cleanData))
names(cleanData) <- gsub("angle", "Angle", names(cleanData))
names(cleanData) <- gsub("gravity", "Gravity", names(cleanData))
names(cleanData) <- gsub("Mag", "Magnitude", names(cleanData))

## Creation of independent tidy data set with the average of each variable for each activity and each subject.

tidyData <- cleanData %>% 
  group_by(Subject, Activity)%>%
  summarise_all(funs(mean))
write.table(tidyData, "tidyData.txt", row.names = FALSE)

##Checking the column names
str(tidyData)
tidyData
