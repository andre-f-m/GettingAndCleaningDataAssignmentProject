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


### Data Summary

```
   subjectId                  activity  tBodyAccMeanX    tBodyAccMeanY       tBodyAccMeanZ       tBodyAccStdX      tBodyAccStdY     
 Min.   : 1.0   WALKING           :30   Min.   :0.2216   Min.   :-0.040514   Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024  
 1st Qu.: 8.0   WALKING_UPSTAIRS  :30   1st Qu.:0.2712   1st Qu.:-0.020022   1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205  
 Median :15.5   WALKING_DOWNSTAIRS:30   Median :0.2770   Median :-0.017262   Median :-0.10819   Median :-0.7526   Median :-0.50897  
 Mean   :15.5   SITTING           :30   Mean   :0.2743   Mean   :-0.017876   Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046  
 3rd Qu.:23.0   STANDING          :30   3rd Qu.:0.2800   3rd Qu.:-0.014936   3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077  
 Max.   :30.0   LAYING            :30   Max.   :0.3015   Max.   :-0.001308   Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694  

  tBodyAccStdZ     tGravityAccMeanX  tGravityAccMeanY   tGravityAccMeanZ   tGravityAccStdX   tGravityAccStdY   tGravityAccStdZ  
 Min.   :-0.9877   Min.   :-0.6800   Min.   :-0.47989   Min.   :-0.49509   Min.   :-0.9968   Min.   :-0.9942   Min.   :-0.9910  
 1st Qu.:-0.9498   1st Qu.: 0.8376   1st Qu.:-0.23319   1st Qu.:-0.11726   1st Qu.:-0.9825   1st Qu.:-0.9711   1st Qu.:-0.9605  
 Median :-0.6518   Median : 0.9208   Median :-0.12782   Median : 0.02384   Median :-0.9695   Median :-0.9590   Median :-0.9450  
 Mean   :-0.5756   Mean   : 0.6975   Mean   :-0.01621   Mean   : 0.07413   Mean   :-0.9638   Mean   :-0.9524   Mean   :-0.9364  
 3rd Qu.:-0.2306   3rd Qu.: 0.9425   3rd Qu.: 0.08773   3rd Qu.: 0.14946   3rd Qu.:-0.9509   3rd Qu.:-0.9370   3rd Qu.:-0.9180  
 Max.   : 0.6090   Max.   : 0.9745   Max.   : 0.95659   Max.   : 0.95787   Max.   :-0.8296   Max.   :-0.6436   Max.   :-0.6102  

 tBodyAccJerkMeanX tBodyAccJerkMeanY    tBodyAccJerkMeanZ   tBodyAccJerkStdX  tBodyAccJerkStdY  tBodyAccJerkStdZ   tBodyGyroMeanX    
 Min.   :0.04269   Min.   :-0.0386872   Min.   :-0.067458   Min.   :-0.9946   Min.   :-0.9895   Min.   :-0.99329   Min.   :-0.20578  
 1st Qu.:0.07396   1st Qu.: 0.0004664   1st Qu.:-0.010601   1st Qu.:-0.9832   1st Qu.:-0.9724   1st Qu.:-0.98266   1st Qu.:-0.04712  
 Median :0.07640   Median : 0.0094698   Median :-0.003861   Median :-0.8104   Median :-0.7756   Median :-0.88366   Median :-0.02871  
 Mean   :0.07947   Mean   : 0.0075652   Mean   :-0.004953   Mean   :-0.5949   Mean   :-0.5654   Mean   :-0.73596   Mean   :-0.03244  
 3rd Qu.:0.08330   3rd Qu.: 0.0134008   3rd Qu.: 0.001958   3rd Qu.:-0.2233   3rd Qu.:-0.1483   3rd Qu.:-0.51212   3rd Qu.:-0.01676  
 Max.   :0.13019   Max.   : 0.0568186   Max.   : 0.038053   Max.   : 0.5443   Max.   : 0.3553   Max.   : 0.03102   Max.   : 0.19270  

 tBodyGyroMeanY     tBodyGyroMeanZ     tBodyGyroStdX     tBodyGyroStdY     tBodyGyroStdZ     tBodyGyroJerkMeanX tBodyGyroJerkMeanY
 Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.9943   Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721   Min.   :-0.07681  
 1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.9735   1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322   1st Qu.:-0.04552  
 Median :-0.07318   Median : 0.08512   Median :-0.7890   Median :-0.8017   Median :-0.8010   Median :-0.09868   Median :-0.04112  
 Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.6916   Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606   Mean   :-0.04269  
 3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.4414   3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110   3rd Qu.:-0.03842  
 Max.   : 0.02747   Max.   : 0.17910   Max.   : 0.2677   Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209   Max.   :-0.01320  

 tBodyGyroJerkMeanZ  tBodyGyroJerkStdX tBodyGyroJerkStdY tBodyGyroJerkStdZ tBodyAccMagMean   tBodyAccMagStd    tGravityAccMagMean
 Min.   :-0.092500   Min.   :-0.9965   Min.   :-0.9971   Min.   :-0.9954   Min.   :-0.9865   Min.   :-0.9865   Min.   :-0.9865   
 1st Qu.:-0.061725   1st Qu.:-0.9800   1st Qu.:-0.9832   1st Qu.:-0.9848   1st Qu.:-0.9573   1st Qu.:-0.9430   1st Qu.:-0.9573   
 Median :-0.053430   Median :-0.8396   Median :-0.8942   Median :-0.8610   Median :-0.4829   Median :-0.6074   Median :-0.4829   
 Mean   :-0.054802   Mean   :-0.7036   Mean   :-0.7636   Mean   :-0.7096   Mean   :-0.4973   Mean   :-0.5439   Mean   :-0.4973   
 3rd Qu.:-0.048985   3rd Qu.:-0.4629   3rd Qu.:-0.5861   3rd Qu.:-0.4741   3rd Qu.:-0.0919   3rd Qu.:-0.2090   3rd Qu.:-0.0919   
 Max.   :-0.006941   Max.   : 0.1791   Max.   : 0.2959   Max.   : 0.1932   Max.   : 0.6446   Max.   : 0.4284   Max.   : 0.6446   

 tGravityAccMagStd tBodyAccJerkMagMean tBodyAccJerkMagStd tBodyGyroMagMean  tBodyGyroMagStd   tBodyGyroJerkMagMean tBodyGyroJerkMagStd
 Min.   :-0.9865   Min.   :-0.9928     Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9814   Min.   :-0.99732     Min.   :-0.9977    
 1st Qu.:-0.9430   1st Qu.:-0.9807     1st Qu.:-0.9765    1st Qu.:-0.9461   1st Qu.:-0.9476   1st Qu.:-0.98515     1st Qu.:-0.9805    
 Median :-0.6074   Median :-0.8168     Median :-0.8014    Median :-0.6551   Median :-0.7420   Median :-0.86479     Median :-0.8809    
 Mean   :-0.5439   Mean   :-0.6079     Mean   :-0.5842    Mean   :-0.5652   Mean   :-0.6304   Mean   :-0.73637     Mean   :-0.7550    
 3rd Qu.:-0.2090   3rd Qu.:-0.2456     3rd Qu.:-0.2173    3rd Qu.:-0.2159   3rd Qu.:-0.3602   3rd Qu.:-0.51186     3rd Qu.:-0.5767    
 Max.   : 0.4284   Max.   : 0.4345     Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.3000   Max.   : 0.08758     Max.   : 0.2502    

 fBodyAccMeanX     fBodyAccMeanY      fBodyAccMeanZ      fBodyAccStdX      fBodyAccStdY       fBodyAccStdZ     fBodyAccJerkMeanX
 Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895   Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.9946  
 1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619   1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.9828  
 Median :-0.7691   Median :-0.59498   Median :-0.7236   Median :-0.7470   Median :-0.51338   Median :-0.6441   Median :-0.8126  
 Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297   Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.6139  
 3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183   3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.2820  
 Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.4743  

 fBodyAccJerkMeanY fBodyAccJerkMeanZ fBodyAccJerkStdX  fBodyAccJerkStdY  fBodyAccJerkStdZ    fBodyGyroMeanX    fBodyGyroMeanY   
 Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.9951   Min.   :-0.9905   Min.   :-0.993108   Min.   :-0.9931   Min.   :-0.9940  
 1st Qu.:-0.9725   1st Qu.:-0.9796   1st Qu.:-0.9847   1st Qu.:-0.9737   1st Qu.:-0.983747   1st Qu.:-0.9697   1st Qu.:-0.9700  
 Median :-0.7817   Median :-0.8707   Median :-0.8254   Median :-0.7852   Median :-0.895121   Median :-0.7300   Median :-0.8141  
 Mean   :-0.5882   Mean   :-0.7144   Mean   :-0.6121   Mean   :-0.5707   Mean   :-0.756489   Mean   :-0.6367   Mean   :-0.6767  
 3rd Qu.:-0.1963   3rd Qu.:-0.4697   3rd Qu.:-0.2475   3rd Qu.:-0.1685   3rd Qu.:-0.543787   3rd Qu.:-0.3387   3rd Qu.:-0.4458  
 Max.   : 0.2767   Max.   : 0.1578   Max.   : 0.4768   Max.   : 0.3498   Max.   :-0.006236   Max.   : 0.4750   Max.   : 0.3288  
 
 fBodyGyroMeanZ    fBodyGyroStdX     fBodyGyroStdY     fBodyGyroStdZ     fBodyAccMagMean   fBodyAccMagStd    fBodyBodyAccJerkMagMean
 Min.   :-0.9860   Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.9868   Min.   :-0.9876   Min.   :-0.9940        
 1st Qu.:-0.9624   1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.9560   1st Qu.:-0.9452   1st Qu.:-0.9770        
 Median :-0.7909   Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.6703   Median :-0.6513   Median :-0.7940        
 Mean   :-0.6044   Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.5365   Mean   :-0.6210   Mean   :-0.5756        
 3rd Qu.:-0.2635   3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.:-0.1622   3rd Qu.:-0.3654   3rd Qu.:-0.1872        
 Max.   : 0.4924   Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.5866   Max.   : 0.1787   Max.   : 0.5384        
 
 fBodyBodyAccJerkMagStd fBodyBodyGyroMagMean fBodyBodyGyroMagStd fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMagStd
 Min.   :-0.9944        Min.   :-0.9865      Min.   :-0.9815     Min.   :-0.9976          Min.   :-0.9976        
 1st Qu.:-0.9752        1st Qu.:-0.9616      1st Qu.:-0.9488     1st Qu.:-0.9813          1st Qu.:-0.9802        
 Median :-0.8126        Median :-0.7657      Median :-0.7727     Median :-0.8779          Median :-0.8941        
 Mean   :-0.5992        Mean   :-0.6671      Mean   :-0.6723     Mean   :-0.7564          Mean   :-0.7715        
 3rd Qu.:-0.2668        3rd Qu.:-0.4087      3rd Qu.:-0.4277     3rd Qu.:-0.5831          3rd Qu.:-0.6081        
 Max.   : 0.3163        Max.   : 0.2040      Max.   : 0.2367     Max.   : 0.1466          Max.   : 0.2878  
``` 
 


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