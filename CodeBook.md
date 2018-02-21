**Getting and Cleaning Data Course - Project CodeBook**


**Description:**

This CodeBook describes the variables, the data and the transformation in the project. 

A full description of the data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

**Data Set Information:**

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cut-off frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


**Variable Information:**

subject		  ID of the 30 volunteers taking part in the experiment. Value range: 1 thru 30.
activity		The 6 levels of activity performed by the volunteers:
                  1.	WALKING
                  2.	WALKING_UPSTAIRS
                  3.	WALKING_DOWNSTAIRS
                  4.	SITTING
                  5.	STANDING
                  6.	LAYING

The following signals are used as variables. -XYZ denotes the tri-axial signals in X, Y and Z directions.

- timeBodyAccelerometer-XYZ
- timeGravityAccelerometer-XYZ
- timeBodyAccelerometerJerk-XYZ
- timeBodyGyroscope-XYZ
- timeBodyGyroscopeJerk-XYZ
- timeBodyAccelerometerMagnitude
- timeGravityAccelerometerMagnitude
- timeBodyAccelerometerJerkMagnitude
- timeBodyGyroscopeMagnitude
- timeBodyGyroscopeJerkMagnitude
- frequencyBodyAccelerometer-XYZ
- frequencyBodyAccelerometerJerk-XYZ
- frequencyBodyGyroscope-XYZ
- frequencyBodyAccelerometerMagnitude
- frequencyBodyAccelerometerJerkMagnitude
- frequencyBodyGyroscopeMagnitude
- frequencyBodyGyroscopeJerkMagnitude

 
**Transformation:**

For each subject and activity the mean value - mean() and Standard Deviation - std() for each of the above signal variables were arrived at using the following steps in the  run_analysis.R script.
 
Step-1: Merges the training and the test sets to create one data set.
Step-2. Extracts only the measurements on the mean and standard deviation for each    
             measurement. 
Step-3. Uses descriptive activity names to name the activities in the data set.
Step-4. Appropriately labels the data set with descriptive variable names.
Step-5. From the data set in step 4, creates a second, independent tidy data set with the    
             average of each variable for each activity and each subject.

Please see the script that describes each step with additional comments.

**Output:**

The output of the above steps is in the data frame newData, which has subsequently been written into the tidy dataset tidydata.txt.

The output has 180 rows (30 subjects x 6 activities) and the following 68 variables/columns of data:

1.	subject
2.	activity
3.	timeBodyAccelerometer-mean()-X
4.	timeBodyAccelerometer-mean()-Y
5.	timeBodyAccelerometer-mean()-Z
6.	timeBodyAccelerometer-std()-X
7.	timeBodyAccelerometer-std()-Y
8.	timeBodyAccelerometer-std()-Z
9.	timeGravityAccelerometer-mean()-X
10.	timeGravityAccelerometer-mean()-Y
11.	timeGravityAccelerometer-mean()-Z
12.	timeGravityAccelerometer-std()-X
13.	timeGravityAccelerometer-std()-Y
14.	timeGravityAccelerometer-std()-Z
15.	timeBodyAccelerometerJerk-mean()-X
16.	timeBodyAccelerometerJerk-mean()-Y
17.	timeBodyAccelerometerJerk-mean()-Z
18.	timeBodyAccelerometerJerk-std()-X
19.	timeBodyAccelerometerJerk-std()-Y
20.	timeBodyAccelerometerJerk-std()-Z
21.	timeBodyGyroscope-mean()-X
22.	timeBodyGyroscope-mean()-Y
23.	timeBodyGyroscope-mean()-Z
24.	timeBodyGyroscope-std()-X
25.	timeBodyGyroscope-std()-Y
26.	timeBodyGyroscope-std()-Z
27.	timeBodyGyroscopeJerk-mean()-X
28.	timeBodyGyroscopeJerk-mean()-Y
29.	timeBodyGyroscopeJerk-mean()-Z
30.	timeBodyGyroscopeJerk-std()-X
31.	timeBodyGyroscopeJerk-std()-Y
32.	timeBodyGyroscopeJerk-std()-Z
33.	timeBodyAccelerometerMagnitude-mean()
34.	timeBodyAccelerometerMagnitude-std()
35.	timeGravityAccelerometerMagnitude-mean()
36.	timeGravityAccelerometerMagnitude-std()
37.	timeBodyAccelerometerJerkMagnitude-mean()
38.	timeBodyAccelerometerJerkMagnitude-std()
39.	timeBodyGyroscopeMagnitude-mean()
40.	timeBodyGyroscopeMagnitude-std()
41.	timeBodyGyroscopeJerkMagnitude-mean()
42.	timeBodyGyroscopeJerkMagnitude-std()
43.	frequencyBodyAccelerometer-mean()-X
44.	frequencyBodyAccelerometer-mean()-Y
45.	frequencyBodyAccelerometer-mean()-Z
46.	frequencyBodyAccelerometer-std()-X
47.	frequencyBodyAccelerometer-std()-Y
48.	frequencyBodyAccelerometer-std()-Z
49.	frequencyBodyAccelerometerJerk-mean()-X
50.	frequencyBodyAccelerometerJerk-mean()-Y
51.	frequencyBodyAccelerometerJerk-mean()-Z
52.	frequencyBodyAccelerometerJerk-std()-X
53.	frequencyBodyAccelerometerJerk-std()-Y
54.	frequencyBodyAccelerometerJerk-std()-Z
55.	frequencyBodyGyroscope-mean()-X
56.	frequencyBodyGyroscope-mean()-Y
57.	frequencyBodyGyroscope-mean()-Z
58.	frequencyBodyGyroscope-std()-X
59.	frequencyBodyGyroscope-std()-Y
60.	frequencyBodyGyroscope-std()-Z
61.	frequencyBodyAccelerometerMagnitude-mean()
62.	frequencyBodyAccelerometerMagnitude-std()
63.	frequencyBodyAccelerometerJerkMagnitude-mean()
64.	frequencyBodyAccelerometerJerkMagnitude-std()
65.	frequencyBodyGyroscopeMagnitude-mean()
66.	frequencyBodyGyroscopeMagnitude-std()
67.	frequencyBodyGyroscopeJerkMagnitude-mean()
68.	frequencyBodyGyroscopeJerkMagnitude-std()





