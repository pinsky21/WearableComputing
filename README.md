
## Project Overview
The purpose of this project was to demonstrate the ability to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to below, represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at [the site where the data was obtained] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The actual data for the project was obtained from [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Steps in the [run_analysis.R] (https://github.com/pinsky21/WearableComputing/blob/master/run_analysis.R) file

The following are general steps I took when writing the script for this project:

1. Merge the training and test sets to create one data set
        + I first read in 3 data sets for each Train and Test groups
        + I also read in the list of variable names
        
2. Extract only the measurements on the mean and std dev for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names
5. Create a second, independent tidy data set with the average of each variable for each subject and each activity.


When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
