# Codebook for the variables contained in the tidy dataset #

The tidy data contains 68 variables (see full list below).

The first variable (SubjectID) contains an integer  between 1 to 30 that is the ID of the corresponding subject.

The second variable (Activity) is a factor that refers to one of the six activities performed by the subject: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The remaining 66 numeric variables are the mean values of the respective feature for each of the 180 combinations of SubjectID+Activity. 

These variables are named according to the following convention:
* t or f denotes time or frequency domain respectively.
* Body and Gravity denote the body and gravity components of the acceleration signals, respectively.
* Acc and Gyro refer to measurements from the accelerometer and gyroscope respectively.
* Jerk refers to Jerk signals for linear acceleration and angular velocity.
* Mag denotes the magnitude calculated using Eculidean norm.
* X, Y, and Z denote signal components in the X, Y, Z, directions respectively.
* mean refers to the signal mean.
* std refers to the signal standard deviation.

Further information on how each of the features were calculated  is in the features_info.txt file in the original dataset.


The full list of variables is:
* SubjectID: Numeric variable between 1-30 representing each subject.
* Activity: Factor with 6 levels representing each of the six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 
* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyAccMag.mean..
* tGravityAccMag.mean..
* tBodyAccJerkMag.mean..
* tBodyGyroMag.mean..
* tBodyGyroJerkMag.mean..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyAccMag.mean..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroJerkMag.mean..
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.std..
* tGravityAccMag.std..
* tBodyAccJerkMag.std..
* tBodyGyroMag.std..
* tBodyGyroJerkMag.std..
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyAccMag.std..
* fBodyBodyAccJerkMag.std..
* fBodyBodyGyroMag.std..
* fBodyBodyGyroJerkMag.std..
