Feature Selection 
=================

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

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.md'


                                        ================================
                                        DATA DICTIONARY - RUN_ANALYSIS.R
	                                ================================
                                        
	Subject		Char
		A group of 30 volunteers within an age bracket of 19-48 years
		
	Activity 	Char
		Type of activity measured
		WALKING								
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
	
	directory 	Char     
		For setting up working directory to read files
		"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"
		
	directoryTest	Char   
		For setting up working directory to read files
		"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test"
		
	directoryTrain	Char 
		For setting up working directory to read files
		"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train"
		
	featureNames	Data Frame	
		Variable to read in feature.txt file
		
	activityNames	Data Frame	
		Variable to read activity_labels.txt file	
		
	testData	Data Frame
		Variable to read X_test.txt file
		
	testActivity	Data Frame
		Variable to read activity file y_test.txt
	
	testSubject	Data Frame
		Variable to read subject file subject_test.txt
		
	finalTestData 	Data Frame
		Column bind for Activity, Test and Subject data for test observations
		
	trainData	Data Frame	
		Variable to read X_train.txt file
		
	trainActivity	Data Frame
		Variable to read activity file y_train.txt
	
	trainSubject	Data Frame
		Variable to read subject file subject_train.txt
		
	finaltrainData 	Data Frame
		Column bind for Activity, train and Subject data for train observations
		
	finalData	Data Frame	
		Resultant variable after row binding Test and Train datasets
		
	columnMeanIndices	
			Num		
		To store the column numnbers for subsetting the observation data frame for mean
		
	columnStdIndices	
			Num			
		To store the column numnbers for subsetting the observation data frame for standard deviation	
		
	columnIndices	Num	
		To store the column numnbers for subsetting the observation data frame for mean and standard deviation
	
	columnNames	Char	
		To store the name of the observation columns
		
	columnFeatureNames
			Char
		To store the name of the observation columns  along with two additional columns Subject & Activity

	finalObsData	Data Frame
		Resultant variable after subsetting mean and standard deviation

	midTidyData	Data Frame
		To store out of summraise function for summarizing mean of all columns based on subject and activity 
		
	tidyData	Data Frame	
		Final data frame for tidy dataset

	
	
	
	
	
	
	
	
	
	
	
		
	
	
	
	
	
	
	
	
	
	
	
		
	
	
		
	
	
		
	
	
	
	
	
		

		
		
	
	
	
	
	
		
	
	
		
	
	
		
	
	
		
		

		
		
		
		
		



















































































































































































































































































































































































































































































































































































