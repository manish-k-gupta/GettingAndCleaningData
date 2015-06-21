                          
 run_analysis.R V1.0 
 ____________________


The script executes the following steps for creating output tidy dataset
_________________________________________________________________________


Initial Prep)
-------------
All the required measurement data has been downloaded in working directory as zip file, the data is extracted in the folder with the same name, the folder contains test and training data. 


Step1) 
------
This step reads the features.txt file and stores the data in a variable, this will eventually be used to give column names for recorded measurement.

Step2)
------
This step reads the activity_label.txt file and stores the data in a variable, it uses descriptive activity names to name the activities in the data set, details for activities are furnished below:
	
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
	
Step3)
------
This step reads test measurements
	a) Read test measurement data file x_test.txt
	b) Read test activity file y_test.txt
	c) Read test subject file subject_test.txt
	d) Column bind all the three data frames to have test measurements for the subjects	

Step4)
------
This step reads train measurements
	a) Read train data file x_train.txt
	b) Read train activity file y_train.txt
	c) Read train subject file subject_train.txt
	d) Column bind all the three data frames to have train observations for subjects
	
Step5) 
------
As part of Course project requirement for merging both test and train measurements, this step row bind the above two datasets 

Step6)
------
This step creates column indicies for subsetting the output dataset of Step5 for extracting only mean() and std() observations, column names are also saved to replace the default column names in the output dataset of Step5
Assumption: Only those columns are selected which either have a mean() char string or a std() char string, this was achieved using fixed = TRUE grep function argument 

Step7) 
------
This step replaces activity number with corresponding activity name (ref table in Step2), for example if activity in the measurement is mentioned as 2, it will be replaced by "WALKING_UPSTAIRS"

Step8)
------
This step replaces default column names with the right column names stored in Step6 using feature.txt file

Step9)
------
this step invokes dplyr package to first group the output dataset of step 8 by Subject & Activity and later applied aggreated mean function to all other columns of the observation, the output of this is the tidy dataset, it is then written to a varible coerced as a data frame

Step10)
-------
This step writes the tidy datset to a text file
