# tidy.txt code book

The results of the Getting and Cleaning Data assignment are stored in the tidy.txt file. File formats and contents are described here.

## File format
tidy.txt file contains 180 observations of 68 variables with each row corresponding to a one observation.
The file contains header row giving names to the variables (described in the next section) totalling in 181 rows in the raw file.

The observations are separated by space (" " character, ASCI code 32), the decimal separator is dot (. character, ASCI code 46) with the row separator being \n character (ASCI code 10).
The values of the observations are not quoted and do not contain NULL or NA values.

The dataset doen not include row names.

## Variables described
The dataset contains average of Mean and Std (standard deviation) observations of each variable for each activity and each subject from the original dataset (refer to assignment.txt fpr the link to the original dataset code book).

The variables include

| Variable       |  Type      |
|:---------------|-----------:|
|Activity| Factor|
|Subject| Factor |
|tBodyAccMeanX|Numeric|
|tBodyAccMeanY|Numeric|
|tBodyAccMeanZ|Numeric|
|tBodyAccStdX|Numeric|
|tBodyAccStdY|Numeric|
|tBodyAccStdZ|Numeric|
|tGravityAccMeanX|Numeric|
|tGravityAccMeanY|Numeric|
|tGravityAccMeanZ|Numeric|
|tGravityAccStdX|Numeric|
|tGravityAccStdY|Numeric|
|tGravityAccStdZ|Numeric|
|tBodyAccJerkMeanX|Numeric|
|tBodyAccJerkMeanY|Numeric|
|tBodyAccJerkMeanZ|Numeric|
|tBodyAccJerkStdX|Numeric|
|tBodyAccJerkStdY|Numeric|
|tBodyAccJerkStdZ|Numeric|
|tBodyGyroMeanX|Numeric|
|tBodyGyroMeanY|Numeric|
|tBodyGyroMeanZ|Numeric|
|tBodyGyroStdX|Numeric|
|tBodyGyroStdY|Numeric|
|tBodyGyroStdZ|Numeric|
|tBodyGyroJerkMeanX|Numeric|
|tBodyGyroJerkMeanY|Numeric|
|tBodyGyroJerkMeanZ|Numeric|
|tBodyGyroJerkStdX|Numeric|
|tBodyGyroJerkStdY|Numeric|
|tBodyGyroJerkStdZ|Numeric|
|tBodyAccMagMean|Numeric|
|tBodyAccMagStd|Numeric|
|tGravityAccMagMean|Numeric|
|tGravityAccMagStd|Numeric|
|tBodyAccJerkMagMean|Numeric|
|tBodyAccJerkMagStd|Numeric|
|tBodyGyroMagMean|Numeric|
|tBodyGyroMagStd|Numeric|
|tBodyGyroJerkMagMean|Numeric|
|tBodyGyroJerkMagStd|Numeric|
|fBodyAccMeanX|Numeric|
|fBodyAccMeanY|Numeric|
|fBodyAccMeanZ|Numeric|
|fBodyAccStdX|Numeric|
|fBodyAccStdY|Numeric|
|fBodyAccStdZ|Numeric|
|fBodyAccMeanFreqX|Numeric|
|fBodyAccMeanFreqY|Numeric|
|fBodyAccMeanFreqZ|Numeric|
|fBodyAccJerkMeanX|Numeric|
|fBodyAccJerkMeanY|Numeric|
|fBodyAccJerkMeanZ|Numeric|
|fBodyAccJerkStdX|Numeric|
|fBodyAccJerkStdY|Numeric|
|fBodyAccJerkStdZ|Numeric|
|fBodyAccJerkMeanFreqX|Numeric|
|fBodyAccJerkMeanFreqY|Numeric|
|fBodyAccJerkMeanFreqZ|Numeric|
|fBodyGyroMeanX|Numeric|
|fBodyGyroMeanY|Numeric|
|fBodyGyroMeanZ|Numeric|
|fBodyGyroStdX|Numeric|
|fBodyGyroStdY|Numeric|
|fBodyGyroStdZ|Numeric|
|fBodyGyroMeanFreqX|Numeric|
|fBodyGyroMeanFreqY|Numeric|
|fBodyGyroMeanFreqZ|Numeric|
|fBodyAccMagMean|Numeric|
|fBodyAccMagStd|Numeric|
|fBodyAccMagMeanFreq|Numeric|
|fBodyBodyAccJerkMagMean|Numeric|
|fBodyBodyAccJerkMagStd|Numeric|
|fBodyBodyGyroMagMean|Numeric|
|fBodyBodyGyroMagStd|Numeric|
|fBodyBodyGyroJerkMagMean|Numeric|
|fBodyBodyGyroJerkMagStd|Numeric|

Numeric values range from [-1, 1]

`Activity` and `Subject` variables are identifiers.
`Subject` identifies the subject who performed the activity. Its range is from 1 to 30.
`Activity` factor can take the following values:

|Activity|
|--------|
|WALKING|
|WALKING_UPSTAIRS|
|WALKING_DOWNSTAIRS|
|SITTING|
|STANDING|
|LAYING|


