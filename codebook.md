This data set is a subset of the data contained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Specifically, I created one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements containing the strings "mean" or "std" for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.




|Col Name | Description|
|---------|------------|
|subject| the subject id|
|activity| the activity type|
|ave(tBodyAcc.mean.X) |The mean of tBodyAcc.mean.X |
|ave(tBodyAcc.mean.Y) |The mean of tBodyAcc.mean.Y |
|ave(tBodyAcc.mean.Z) |The mean of tBodyAcc.mean.Z |
|ave(tBodyAcc.std.X) |The mean of tBodyAcc.std.X |
|ave(tBodyAcc.std.Y) |The mean of tBodyAcc.std.Y |
|ave(tBodyAcc.std.Z) |The mean of tBodyAcc.std.Z |
|ave(tGravityAcc.mean.X) |The mean of tGravityAcc.mean.X |
|ave(tGravityAcc.mean.Y) |The mean of tGravityAcc.mean.Y |
|ave(tGravityAcc.mean.Z) |The mean of tGravityAcc.mean.Z |
|ave(tGravityAcc.std.X) |The mean of tGravityAcc.std.X |
|ave(tGravityAcc.std.Y) |The mean of tGravityAcc.std.Y |
|ave(tGravityAcc.std.Z) |The mean of tGravityAcc.std.Z |
|ave(tBodyAccJerk.mean.X) |The mean of tBodyAccJerk.mean.X |
|ave(tBodyAccJerk.mean.Y) |The mean of tBodyAccJerk.mean.Y |
|ave(tBodyAccJerk.mean.Z) |The mean of tBodyAccJerk.mean.Z |
|ave(tBodyAccJerk.std.X) |The mean of tBodyAccJerk.std.X |
|ave(tBodyAccJerk.std.Y) |The mean of tBodyAccJerk.std.Y |
|ave(tBodyAccJerk.std.Z) |The mean of tBodyAccJerk.std.Z |
|ave(tBodyGyro.mean.X) |The mean of tBodyGyro.mean.X |
|ave(tBodyGyro.mean.Y) |The mean of tBodyGyro.mean.Y |
|ave(tBodyGyro.mean.Z) |The mean of tBodyGyro.mean.Z |
|ave(tBodyGyro.std.X) |The mean of tBodyGyro.std.X |
|ave(tBodyGyro.std.Y) |The mean of tBodyGyro.std.Y |
|ave(tBodyGyro.std.Z) |The mean of tBodyGyro.std.Z |
|ave(tBodyGyroJerk.mean.X) |The mean of tBodyGyroJerk.mean.X |
|ave(tBodyGyroJerk.mean.Y) |The mean of tBodyGyroJerk.mean.Y |
|ave(tBodyGyroJerk.mean.Z) |The mean of tBodyGyroJerk.mean.Z |
|ave(tBodyGyroJerk.std.X) |The mean of tBodyGyroJerk.std.X |
|ave(tBodyGyroJerk.std.Y) |The mean of tBodyGyroJerk.std.Y |
|ave(tBodyGyroJerk.std.Z) |The mean of tBodyGyroJerk.std.Z |
|ave(tBodyAccMag.mean) |The mean of tBodyAccMag.mean |
|ave(tBodyAccMag.std) |The mean of tBodyAccMag.std |
|ave(tGravityAccMag.mean) |The mean of tGravityAccMag.mean |
|ave(tGravityAccMag.std) |The mean of tGravityAccMag.std |
|ave(tBodyAccJerkMag.mean) |The mean of tBodyAccJerkMag.mean |
|ave(tBodyAccJerkMag.std) |The mean of tBodyAccJerkMag.std |
|ave(tBodyGyroMag.mean) |The mean of tBodyGyroMag.mean |
|ave(tBodyGyroMag.std) |The mean of tBodyGyroMag.std |
|ave(tBodyGyroJerkMag.mean) |The mean of tBodyGyroJerkMag.mean |
|ave(tBodyGyroJerkMag.std) |The mean of tBodyGyroJerkMag.std |
|ave(fBodyAcc.mean.X) |The mean of fBodyAcc.mean.X |
|ave(fBodyAcc.mean.Y) |The mean of fBodyAcc.mean.Y |
|ave(fBodyAcc.mean.Z) |The mean of fBodyAcc.mean.Z |
|ave(fBodyAcc.std.X) |The mean of fBodyAcc.std.X |
|ave(fBodyAcc.std.Y) |The mean of fBodyAcc.std.Y |
|ave(fBodyAcc.std.Z) |The mean of fBodyAcc.std.Z |
|ave(fBodyAcc.meanFreq.X) |The mean of fBodyAcc.meanFreq.X |
|ave(fBodyAcc.meanFreq.Y) |The mean of fBodyAcc.meanFreq.Y |
|ave(fBodyAcc.meanFreq.Z) |The mean of fBodyAcc.meanFreq.Z |
|ave(fBodyAccJerk.mean.X) |The mean of fBodyAccJerk.mean.X |
|ave(fBodyAccJerk.mean.Y) |The mean of fBodyAccJerk.mean.Y |
|ave(fBodyAccJerk.mean.Z) |The mean of fBodyAccJerk.mean.Z |
|ave(fBodyAccJerk.std.X) |The mean of fBodyAccJerk.std.X |
|ave(fBodyAccJerk.std.Y) |The mean of fBodyAccJerk.std.Y |
|ave(fBodyAccJerk.std.Z) |The mean of fBodyAccJerk.std.Z |
|ave(fBodyAccJerk.meanFreq.X) |The mean of fBodyAccJerk.meanFreq.X |
|ave(fBodyAccJerk.meanFreq.Y) |The mean of fBodyAccJerk.meanFreq.Y |
|ave(fBodyAccJerk.meanFreq.Z) |The mean of fBodyAccJerk.meanFreq.Z |
|ave(fBodyGyro.mean.X) |The mean of fBodyGyro.mean.X |
|ave(fBodyGyro.mean.Y) |The mean of fBodyGyro.mean.Y |
|ave(fBodyGyro.mean.Z) |The mean of fBodyGyro.mean.Z |
|ave(fBodyGyro.std.X) |The mean of fBodyGyro.std.X |
|ave(fBodyGyro.std.Y) |The mean of fBodyGyro.std.Y |
|ave(fBodyGyro.std.Z) |The mean of fBodyGyro.std.Z |
|ave(fBodyGyro.meanFreq.X) |The mean of fBodyGyro.meanFreq.X |
|ave(fBodyGyro.meanFreq.Y) |The mean of fBodyGyro.meanFreq.Y |
|ave(fBodyGyro.meanFreq.Z) |The mean of fBodyGyro.meanFreq.Z |
|ave(fBodyAccMag.mean) |The mean of fBodyAccMag.mean |
|ave(fBodyAccMag.std) |The mean of fBodyAccMag.std |
|ave(fBodyAccMag.meanFreq) |The mean of fBodyAccMag.meanFreq |
|ave(fBodyBodyAccJerkMag.mean) |The mean of fBodyBodyAccJerkMag.mean |
|ave(fBodyBodyAccJerkMag.std) |The mean of fBodyBodyAccJerkMag.std |
|ave(fBodyBodyAccJerkMag.meanFreq) |The mean of fBodyBodyAccJerkMag.meanFreq |
|ave(fBodyBodyGyroMag.mean) |The mean of fBodyBodyGyroMag.mean |
|ave(fBodyBodyGyroMag.std) |The mean of fBodyBodyGyroMag.std |
|ave(fBodyBodyGyroMag.meanFreq) |The mean of fBodyBodyGyroMag.meanFreq |
|ave(fBodyBodyGyroJerkMag.mean) |The mean of fBodyBodyGyroJerkMag.mean |
|ave(fBodyBodyGyroJerkMag.std) |The mean of fBodyBodyGyroJerkMag.std |
|ave(fBodyBodyGyroJerkMag.meanFreq) |The mean of fBodyBodyGyroJerkMag.meanFreq |
|ave(angle.tBodyAccMean.gravity) |The mean of angle.tBodyAccMean.gravity |
|ave(angle.tBodyAccJerkMean.gravityMean) |The mean of angle.tBodyAccJerkMean.gravityMean |
|ave(angle.tBodyGyroMean.gravityMean) |The mean of angle.tBodyGyroMean.gravityMean |
|ave(angle.tBodyGyroJerkMean.gravityMean) |The mean of angle.tBodyGyroJerkMean.gravityMean |
|ave(angle.X.gravityMean) |The mean of angle.X.gravityMean |
|ave(angle.Y.gravityMean) |The mean of angle.Y.gravityMean |
|ave(angle.Z.gravityMean) |The mean of angle.Z.gravityMean |
