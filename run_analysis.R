# Note that all of the steps required for the project are label "***"

library(dplyr)


# 1. load x_train data
train <- read.table("UCI HAR Dataset/train/X_train.txt")

# 2. apply names to columns
featureNames <- read.table("UCI HAR Dataset/features.txt")[,2]
colnames(train) <- make.names(featureNames, unique = TRUE)

# 3. reduce columns to only mean and std
# *** "Extracts only the measurements on the mean and standard deviation for each measurement"
trainMeanStd <- select(train, matches("mean|std"))

# 4. Load Subject column
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(trainSubject) <- c("subject")

# 5. Load Activity column
# *** "Use descriptive activity names to name the activities in the data set"
trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt")
colnames(trainActivity) <- c("activity")

# 6. Rename activity values
activityLabels <-read.table("UCI HAR Dataset/activity_labels.txt")
trainActivityNamed <- transmute(trainActivity, activityLabels[activity,2])
colnames(trainActivityNamed) <- c("activity")

trainFinal <- bind_cols(trainSubject, trainActivityNamed, trainMeanStd)

#
## Redo all of the same steps for test dataset
#

# 1. load x_test data
test <- read.table("UCI HAR Dataset/test/X_test.txt")

# 2. apply names to column
#featureNames <- read.table("UCI HAR Dataset/features.txt")[,2]
colnames(test) <- make.names(featureNames, unique = TRUE)

# 3. reduce columns to only mean and std
# *** "Extracts only the measurements on the mean and standard deviation for each measurement"
testMeanStd <- select(test, matches("mean|std"))

# 4. Load Subject column
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(testSubject) <- c("subject")

# 5. Load Activity column
# *** "Uses descriptive activity names to name the activities in the data set"
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
colnames(testActivity) <- c("activity")

# 6. Rename activity values
#activityLabels <-read.table("UCI HAR Dataset/activity_labels.txt")
testActivityNamed <- transmute(testActivity, activityLabels[activity,2])
colnames(testActivityNamed) <- c("activity")

testFinal <- bind_cols(testSubject, testActivityNamed, testMeanStd)

#
## *** "Merge the training and the test sets to create one data set."
#

combinedFinal <- bind_rows(testFinal, trainFinal)

# ***  "From the data set above, creates a second, independent tidy data set with the average of each variable for each activity and each subject"
aveFinal <- combinedFinal %>% group_by(subject, activity) %>% summarise_each(funs(mean))

# *** "Appropriately labels the data set with descriptive variable names"
colnames(aveFinal) <- c(names(aveFinal)[1:2], lapply(names(aveFinal)[3:88], function(x){paste0("mean(",x,")")}))
# clean up names
colnames(aveFinal) <- gsub("\\.*)",")",names(aveFinal))
colnames(aveFinal) <- gsub("\\.+",".",names(aveFinal))

write.table(aveFinal, "tidy_data.txt", row.name=FALSE) 


# Create CodeBook

mynames <- names(aveFinal)
description <- mynames
description <- gsub("ave\\(", "The mean of ", description)
description <- gsub("\\)", " ", description)
codestart <- paste(mynames, description)
write.table(codestart, "startofcodebook.txt", row.name=FALSE)
