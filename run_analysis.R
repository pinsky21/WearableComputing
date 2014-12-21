
### Getting and Cleaning Data Course Project

### The purpose of this project is to demonstrate the ability to collect, work with, and 
### clean a data set. The goal is to prepare tidy data that can be used for later analysis.


###     1. Merge the training and test sets to create one data set ----

# Read in each data file
xTest <- read.table("./test/X_test.txt")                # Test data set of 561 variables
yTest <- read.table("./test/y_test.txt")                # Activity type IDs for each obs
subTest <- read.table("./test/subject_test.txt")        # Subject (person) IDs for each obs 
xTrain <- read.table("./train/X_train.txt")             # Train data set of 561 varialbes
yTrain <- read.table("./train/y_train.txt")             # Activity type IDs for each obs
subTrain <- read.table("./train/subject_train.txt")     # Subject (person) IDs for each obs
features <- read.table("features.txt")                  # 561 variable names for data sets

# Tidy the variable name data 
features <- features[, 2]                       # Remove the first column of numbers
features <- as.character(features)              # Convert to character vector
features <- make.unique(features)               # Make names unique

# Add the variable names as column headers in each data set
colnames(xTest) <- features
colnames(xTrain) <- features

# Add column names to the other data sets
colnames(yTest) <- "Activity"
colnames(yTrain) <- "Activity"
colnames(subTest) <- "Subject"
colnames(subTrain) <- "Subject"

# Combine the separate Test data sets and the Train data sets
Test <- cbind(subTest, yTest, xTest)
Train <- cbind(subTrain, yTrain, xTrain)

# Now combine the Train and Test data together
data <- rbind(Train, Test)



###     2. Extract only the measurements on the mean and std dev for each measurement ----

# Use the dplyr library for ease of consolidating and further tidying the data
require(dplyr)

# Convert to a data frame tbl
df <- tbl_df(data)

# Keep only Subject, Activity and columns containing "mean()" and "std()".
#       Ignoring the meanFreq and angle.Mean columns.
df <- select(df, Subject, Activity, contains("mean()"), contains("std()"))



###     3. Use descriptive activity names to name the activities in the data set ----

# Replace numeric values in Activity column based upon activity_labels.txt file
df$Activity <- gsub("1", "WALKING", df$Activity)
df$Activity <- gsub("2", "WALKING_UPSTAIRS", df$Activity)
df$Activity <- gsub("3", "WALKING_DOWNSTAIRS", df$Activity)
df$Activity <- gsub("4", "SITTING", df$Activity)
df$Activity <- gsub("5", "STANDING", df$Activity)
df$Activity <- gsub("6", "LAYING", df$Activity)



###     4. Appropriately label the data set with descriptive variable names ----

# Make variables with t- and f- prefixes more descriptive as Time and Freq
names(df) <- gsub("^t", "Time-", names(df))
names(df) <- gsub("^f", "Freq-", names(df))

# Improve readability of mean and std to be Mean and StDev
names(df) <- gsub("mean", "Mean", names(df))
names(df) <- gsub("std", "StDev", names(df))

# Remove the redundant 'BodyBody' in some of the variables
names(df) <- gsub("BodyBody", "Body", names(df))

# Remove the parentheses () to further simplify
names(df) <- gsub("()", "", names(df), fixed=TRUE)



###     5. Create a second, independent tidy data set with the average of each ----
###        variable for each activity and each subject

# Group the data frame by Subject and Activity
output <- group_by(df, Subject, Activity)

# Apply the average (mean) across all variables (except the group_by ones)
output <- summarise_each(output, funs(mean))

# Write the new averaged tidy data set to a text file
write.table(output, "Average_Data_by_Subject_and_Activity.txt", row.names=FALSE)





