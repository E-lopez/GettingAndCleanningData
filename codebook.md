##CodeBook

**Original Source**
>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Tidy_data.txt is the result of merging the whole original dataset into one and extracting the average for eache mean and standardt deviation for each variable measured, according to the subject and the activity performed by them. 

The script I elaborated works as a function with no input arguments. Detailed information on how it works can be found in Readme.md file. 

##Variable description


**Subject** 
A number from 1 to 30 represents each one of the participants on the study 
Class = Integer

**Activity** 
Each one of the subjects was aked to perform one of the six activities listed under this variable: 
*Walking
*Walking Upstairs
*Walking Downstairs
*Sitting
*Standing
*Laying
Class = Character

**Variables** 
Contains the mean of it´s values, according to subject and particular activity
Class = Numeric

##Variable Names

**Following table shows the modifications done in the original variable names.**

Each one of the variables from number 3 ("tBodyAccelerometer-mean()-X") show the mean of the values on each column, according the subject and the activity (one of the six described above) performing. 

t = stands for time.
f = stands for frequency.

"NewNames"
"1" "subject"

>Contains codes representing each one of the participant individuals


"2" "ActLabel"

>Contains labels "Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying"

"3" "tBodyAccelerometer-mean()-X"
"4" "tBodyAccelerometer-mean()-Y"
"5" "tBodyAccelerometer-mean()-Z"
"6" "tGravityAccelerometer-mean()-X"
"7" "tGravityAccelerometer-mean()-Y"
"8" "tGravityAccelerometer-mean()-Z"
"9" "tBodyAccelerometerJerk-mean()-X"
"10" "tBodyAccelerometerJerk-mean()-Y"
"11" "tBodyAccelerometerJerk-mean()-Z"
"12" "tBodyGyroscope-mean()-X"
"13" "tBodyGyroscope-mean()-Y"
"14" "tBodyGyroscope-mean()-Z"
"15" "tBodyGyroscopeJerk-mean()-X"
"16" "tBodyGyroscopeJerk-mean()-Y"
"17" "tBodyGyroscopeJerk-mean()-Z"
"18" "tBodyAccelerometerMagnitude-mean()"
"19" "tGravityAccelerometerMagnitude-mean()"
"20" "tBodyAccelerometerJerkMagnitude-mean()"
"21" "tBodyGyroscopeMagnitude-mean()"
"22" "tBodyGyroscopeJerkMagnitude-mean()"
"23" "fBodyAccelerometer-mean()-X"
"24" "fBodyAccelerometer-mean()-Y"
"25" "fBodyAccelerometer-mean()-Z"
"26" "fBodyAccelerometer-meanFreq()-X"
"27" "fBodyAccelerometer-meanFreq()-Y"
"28" "fBodyAccelerometer-meanFreq()-Z"
"29" "fBodyAccelerometerJerk-mean()-X"
"30" "fBodyAccelerometerJerk-mean()-Y"
"31" "fBodyAccelerometerJerk-mean()-Z"
"32" "fBodyAccelerometerJerk-meanFreq()-X"
"33" "fBodyAccelerometerJerk-meanFreq()-Y"
"34" "fBodyAccelerometerJerk-meanFreq()-Z"
"35" "fBodyGyroscope-mean()-X"
"36" "fBodyGyroscope-mean()-Y"
"37" "fBodyGyroscope-mean()-Z"
"38" "fBodyGyroscope-meanFreq()-X"
"39" "fBodyGyroscope-meanFreq()-Y"
"40" "fBodyGyroscope-meanFreq()-Z"
"41" "fBodyAccelerometerMagnitude-mean()"
"42" "fBodyAccelerometerMagnitude-meanFreq()"
"43" "fBodyAccelerometerJerkMagnitude-mean()"
"44" "fBodyAccelerometerJerkMagnitude-meanFreq()"
"45" "fBodyGyroscopeMagnitude-mean()"
"46" "fBodyGyroscopeMagnitude-meanFreq()"
"47" "fBodyGyroscopeJerkMagnitude-mean()"
"48" "fBodyGyroscopeJerkMagnitude-meanFreq()"
"49" "angle(tBodyAccelerometerMean,gravity)"
"50" "angle(tBodyAccelerometerJerkMean),gravityMean)"
"51" "angle(tBodyGyroscopeMean,gravityMean)"
"52" "angle(tBodyGyroscopeJerkMean,gravityMean)"
"53" "angle(X,gravityMean)"
"54" "angle(Y,gravityMean)"
"55" "angle(Z,gravityMean)"
"56" "tBodyAccelerometer-std()-X"
"57" "tBodyAccelerometer-std()-Y"
"58" "tBodyAccelerometer-std()-Z"
"59" "tGravityAccelerometer-std()-X"
"60" "tGravityAccelerometer-std()-Y"
"61" "tGravityAccelerometer-std()-Z"
"62" "tBodyAccelerometerJerk-std()-X"
"63" "tBodyAccelerometerJerk-std()-Y"
"64" "tBodyAccelerometerJerk-std()-Z"
"65" "tBodyGyroscope-std()-X"
"66" "tBodyGyroscope-std()-Y"
"67" "tBodyGyroscope-std()-Z"
"68" "tBodyGyroscopeJerk-std()-X"
"69" "tBodyGyroscopeJerk-std()-Y"
"70" "tBodyGyroscopeJerk-std()-Z"
"71" "tBodyAccelerometerMagnitude-std()"
"72" "tGravityAccelerometerMagnitude-std()"
"73" "tBodyAccelerometerJerkMagnitude-std()"
"74" "tBodyGyroscopeMagnitude-std()"
"75" "tBodyGyroscopeJerkMagnitude-std()"
"76" "fBodyAccelerometer-std()-X"
"77" "fBodyAccelerometer-std()-Y"
"78" "fBodyAccelerometer-std()-Z"
"79" "fBodyAccelerometerJerk-std()-X"
"80" "fBodyAccelerometerJerk-std()-Y"
"81" "fBodyAccelerometerJerk-std()-Z"
"82" "fBodyGyroscope-std()-X"
"83" "fBodyGyroscope-std()-Y"
"84" "fBodyGyroscope-std()-Z"
"85" "fBodyAccelerometerMagnitude-std()"
"86" "fBodyAccelerometerJerkMagnitude-std()"
"87" "fBodyGyroscopeMagnitude-std()"
"88" "fBodyGyroscopeJerkMagnitude-std()"

