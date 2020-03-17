## Data Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

To obtain further details about the data (e.g. author, license, etc.), please read the file README.TXT inside the directory UCI HAR Dataset

### Collection of the raw data

The data for this project can be found here at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Note: The script will download the file automatically from this URL.


## Tidy Dataset (tidy_dataset.txt)

### Steps executed to create the tidy dataset file

The script run_analysis.R execute following steps:

1) Downloaded automatically the data fro mthe link above
2) Open the datasets:
   * features.txt
   * activity_labels.txt
   * train/X_train.txt
   * train/y_train.txt
   * train/subject_train.txt
   * test/X_test.txt
   * test/y_test.txt
   * test/subject_test.txt
3) Adjust some column names required for the merge of the datasets
4) Merge of datasets and later merge of training and the test datasets
5) Creation of a new dataset which contain only the measurements mean and standard deviation for each measurement.
6) Setting the activity types to the dataset (descriptive activity)
7) Adjusting the labels (column names) of the dataset with descriptive variable names.
8) Creates another dataset (independent tidy dataset) with the average of each variable for each activity and each subject.

The resultant file is called tidy_dataset.txt

### Description of the variables in the tidy_dataset.txt file

The file contain 180 observations (columns)

 * subjectId          : integer  1 to 30: For every subject of the study.
 * activity           : factor   6 levels: WALKING,WALKING_UPSTAIRS, WALKING DOWNSTAIRS, SITTING,STANDING, LAYING. Describes the activity performed by every subject.
 
 Below all the measurements observations from numeric type:
 
 * tBodyAccMeanX
 * tBodyAccMeanY
 * tBodyAccMeanZ           
 * tBodyAccStdX
 * tBodyAccStdY
 * tBodyAccStdZ
 
 * tGravityAccMeanX         
 * tGravityAccMeanY        
 * tGravityAccMeanZ
 * tGravityAccStdX
 * tGravityAccStdY
 * tGravityAccStdZ          
 
 * tBodyAccJerkMeanX       
 * tBodyAccJerkMeanY
 * tBodyAccJerkMeanZ
 * tBodyAccJerkStdX
 * tBodyAccJerkStdY         
 * tBodyAccJerkStdZ        
 
 * tBodyGyroMeanX
 * tBodyGyroMeanY
 * tBodyGyroMeanZ
 * tBodyGyroStdX            
 * tBodyGyroStdY           
 * tBodyGyroStdZ
 
 * tBodyGyroJerkMeanX
 * tBodyGyroJerkMeanY
 * tBodyGyroJerkMeanZ       
 * tBodyGyroJerkStdX       
 * tBodyGyroJerkStdY
 * tBodyGyroJerkStdZ
 
 * tBodyAccMagMean
 * tBodyAccMagStd    

 * tGravityAccMagMean      
 * tGravityAccMagStd

 * tBodyAccJerkMagMean
 * tBodyAccJerkMagStd

 * tBodyGyroMagMean         
 * tBodyGyroMagStd 

 * tBodyGyroJerkMagMean
 * tBodyGyroJerkMagStd
 
 * fBodyAccMeanX 
 * fBodyAccMeanY            
 * fBodyAccMeanZ           
 * fBodyAccStdX
 * fBodyAccStdY
 * fBodyAccStdZ
 
 * fBodyAccJerkMeanX        
 * fBodyAccJerkMeanY       
 * fBodyAccJerkMeanZ
 * fBodyAccJerkStdX
 * fBodyAccJerkStdY
 * fBodyAccJerkStdZ         
 
 * fBodyGyroMeanX          
 * fBodyGyroMeanY
 * fBodyGyroMeanZ
 * fBodyGyroStdX
 * fBodyGyroStdY            
 * fBodyGyroStdZ           
 
 * fBodyAccMagMean
 * fBodyAccMagStd

 * fBodyBodyAccJerkMagMean
 * fBodyBodyAccJerkMagStd  

 * fBodyBodyGyroMagMean    
 * fBodyBodyGyroMagStd
 
 * fBodyBodyGyroJerkMagMean
 * fBodyBodyGyroJerkMagStd 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

Mean: Mean value
Std: Standard deviation


Additional variablews obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'