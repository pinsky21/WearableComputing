
## CodeBook

The data for this project was obtained from the [Human Activity Recognition database] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), which was built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors (accelerometer and gyroscope).

### Explanation of Data Manipulation

From the [original data set] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of this study, the Training and Test subject data was combined into one data set, reduced to keep only the Mean and Standard Deviation variables, and then summarized by averaging the variables by Subject and Activity type. To view more details of the data manipulation see the [README.md] (https://github.com/pinsky21/WearableComputing/blob/master/README.md) file.

The data manipulation resulted in an output file with data for each variable below.

### Data Dictionary

Variables 3 through 68 represent the average of the Mean and Standard Deviation of the Time and Frequency domain signals. The suffix X, Y and Z represent each direction of the 3-axial raw signals. The data values have been normalized and bounded within (-1, 1) and therefore have no units (see Notes below). 

1. Subject
  - ID of anonymous individuals that performed the tests (1-30)
2. Activity
  - Types of activities that data was collected on:
  - LAYING
  - SITTING
  - STANDING
  - WALKING
  - WALKING_DOWNSTAIRS
  - WALKING_UPSTAIRS
3. Time-BodyAcc-Mean-X
4. Time-BodyAcc-Mean-Y
5. Time-BodyAcc-Mean-Z
6. Time-GravityAcc-Mean-X
7. Time-GravityAcc-Mean-Y
8. Time-GravityAcc-Mean-Z
9. Time-BodyAccJerk-Mean-X
10. Time-BodyAccJerk-Mean-Y
11. Time-BodyAccJerk-Mean-Z
12. Time-BodyGyro-Mean-X
13. Time-BodyGyro-Mean-Y
14. Time-BodyGyro-Mean-Z
15. Time-BodyGyroJerk-Mean-X
16. Time-BodyGyroJerk-Mean-Y
17. Time-BodyGyroJerk-Mean-Z
18. Time-BodyAccMag-Mean
19. Time-GravityAccMag-Mean
20. Time-BodyAccJerkMag-Mean
21. Time-BodyGyroMag-Mean
22. Time-BodyGyroJerkMag-Mean
23. Freq-BodyAcc-Mean-X
24. Freq-BodyAcc-Mean-Y
25. Freq-BodyAcc-Mean-Z
26. Freq-BodyAccJerk-Mean-X
27. Freq-BodyAccJerk-Mean-Y
28. Freq-BodyAccJerk-Mean-Z
29. Freq-BodyGyro-Mean-X
30. Freq-BodyGyro-Mean-Y
31. Freq-BodyGyro-Mean-Z
32. Freq-BodyAccMag-Mean
33. Freq-BodyAccJerkMag-Mean
34. Freq-BodyGyroMag-Mean
35. Freq-BodyGyroJerkMag-Mean
36. Time-BodyAcc-StDev-X
37. Time-BodyAcc-StDev-Y
38. Time-BodyAcc-StDev-Z
39. Time-GravityAcc-StDev-X
40. Time-GravityAcc-StDev-Y
41. Time-GravityAcc-StDev-Z
42. Time-BodyAccJerk-StDev-X
43. Time-BodyAccJerk-StDev-Y
44. Time-BodyAccJerk-StDev-Z
45. Time-BodyGyro-StDev-X
46. Time-BodyGyro-StDev-Y
47. Time-BodyGyro-StDev-Z
48. Time-BodyGyroJerk-StDev-X
49. Time-BodyGyroJerk-StDev-Y
50. Time-BodyGyroJerk-StDev-Z
51. Time-BodyAccMag-StDev
52. Time-GravityAccMag-StDev
53. Time-BodyAccJerkMag-StDev
54. Time-BodyGyroMag-StDev
55. Time-BodyGyroJerkMag-StDev
56. Freq-BodyAcc-StDev-X
57. Freq-BodyAcc-StDev-Y
58. Freq-BodyAcc-StDev-Z
59. Freq-BodyAccJerk-StDev-X
60. Freq-BodyAccJerk-StDev-Y
61. Freq-BodyAccJerk-StDev-Z
62. Freq-BodyGyro-StDev-X
63. Freq-BodyGyro-StDev-Y
64. Freq-BodyGyro-StDev-Z
65. Freq-BodyAccMag-StDev
66. Freq-BodyAccJerkMag-StDev
67. Freq-BodyGyroMag-StDev
68. Freq-BodyGyroJerkMag-StDev

### Notes on Units

The data values in the original data set used for this project had been previously normalized and bounded within (-1, 1) by the original authors, which means the data has no units. Therefore the averaged data in this data set also has no units.

Prior to the original summarization and normalization of the data, the acceleration signal raw data from the accelerometer was in standard gravitational units 'g'. The angular velocity vector raw data measured by the gyroscope was in radians/second.


