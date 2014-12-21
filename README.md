
## Project Overview
The purpose of this project was to demonstrate the ability to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to below, represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at [the site where the data was obtained] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The actual data for the project was obtained from [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Steps in the [run_analysis.R] (https://github.com/pinsky21/WearableComputing/blob/master/run_analysis.R) file

The following are general steps I took when writing the script for this project:

1. Merge the training and test sets to create one data set
  + I first read in 3 data sets for each Train and Test groups. I also read in the list of variable names.
  + I then cleaned up the variable name data set by converting it to a character vector and then ensuring unique names using the **make.unique()** funtion.
  + I applied columns names to all the data sets and then combined the data sets using **cbind** and **rbind**.        
2. Extract only the measurements on the mean and std dev for each measurement
  + I really like using the **dplyr** library for manipulating data sets.
  + I simply converted the combined data set to a dplyr data frame tbl.
  + Then used the **select** function get only the columns I needed for the project.
3. Use descriptive activity names to name the activities in the data set
  + After much searching I found that I could use the **gsub** function to replace the Activity numbers with descriptive names.
4. Appropriately label the data set with descriptive variable names
  + The **gsub** function was also key in making the variable names more descriptive.
  + I replaced the t- and f- prefixes with Test and Freq to make it more clear.
  + I thought the parentheses () in the names were distracting and so removed them, however I had to use the **fixed=TRUE** parameter in gsub to make it work.
5. Create a second, independent tidy data set with the average of each variable for each subject and each activity.
  + Again, using the **dplyr** library I grouped the data by Subject and Activity.
  + This was important because it excluded them from being summarized with the mean function when applying it across all the other columns using the **summarise_each** function.
  + And *finally* I wrote the data out to the file "Average_Data_by_Subject_and_Activity.txt".

## Viewing the Output Text File

If you want to view the file that my run_analysis.R script generates, simply execute the following code:


```{r}
output <- read.table("Average_Data_by_Subject_and_Activity.txt")
view(output)
```

**NOTE:** Your working directory must be set to the folder that you extract from the above [data file] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). And you must NOT change the files or their location in order for the script to run properly.
