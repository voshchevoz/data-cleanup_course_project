# Refer to assignment.txt for the actual assignment

# The script does not have any prerequisites and is reentrable:
# one can run it several time with the stable and reproducible results.
# All required files will be downloaded automatically.

# This scripts does not utilize any 3rd party R packages: only base R

# This scripts does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
#
# For the Code Book of the tidy dataset please refer to the CodeBook.md file.

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileLocalPath <- "./data/FUCI_HAR_Dataset.zip"

if(!file.exists("data")) {
  dir.create("data")
}

if(!file.exists(fileLocalPath)) {
  print(paste("Downloading file to", fileLocalPath))
  
  # wb is required option for binary files
  download.file(fileUrl, fileLocalPath, mode = "wb")
  
  print("Downloading complete")
} else {
  print(paste("File", fileLocalPath, "already exists"))
}

if(!file.exists("UCI HAR Dataset")) {
  print(paste("Unzipping files from", fileLocalPath))
  unzip(fileLocalPath)
  print("Unzipping complete")
} else {
  print("Folder \"UCI HAR Dataset\" already exists, proceeding to import")
}


print("Reading common data: features and activity lables...")

# we want feature names to be strings not factors - to easily manipulate those
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
featureNames <- features[,2]

# Look for exact matches of "mean()" and "std()" literals to exclude corner
# cases like "meanFreq()"
# Since grep will return a list of indices we can use right away to subset
# columns from train/test datasets
wantedFeaturesIds <- grepl(".+-mean\\(\\).*|.+-std\\(\\).*", featureNames)
wantedFeaturesNames <- featureNames[wantedFeaturesIds]

# clean up feature names
wantedFeaturesNames <- gsub("-std\\(\\)", "Std", wantedFeaturesNames)
wantedFeaturesNames <- gsub("-mean\\(\\)", "Mean", wantedFeaturesNames)
wantedFeaturesNames <- gsub("-", "", wantedFeaturesNames)

# this way we construct colClasses vector to eliminate import of
# redundant columns from test and train datasets: read.table omits the column
# if its class is "NULL"
colClasses <- sapply(wantedFeaturesIds,
                     function(x) if (x) "numeric" else "NULL")

activities <- read.table("UCI HAR Dataset/activity_labels.txt")

print("Reading test data...")
test <- read.table("UCI HAR Dataset/test/X_test.txt",
                   colClasses = colClasses)
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubject, testActivities, test)

print("Reading train data...")
train <- read.table("UCI HAR Dataset/train/X_train.txt",
                    colClasses = colClasses)
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubject, trainActivities, train)

# concat train and test datasets
merged <- rbind(test, train)

# apply col names
colnames(merged) <- c("Subject", "Activity", wantedFeaturesNames)

# turn Subject and Activity columns into factors
merged$Activity <- factor(merged$Activity,
                          levels = activities[, 1],
                          labels = activities[, 2])
merged$Subject <- factor(merged$Subject)

# calculate means by activity and subject
means <- aggregate(. ~ Activity + Subject, merged, mean)

write.table(means, "tidy.txt", quote = FALSE, sep = ";", row.names = FALSE)

print("Tidy dataset created and written to tidy.txt.")