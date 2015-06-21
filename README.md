                          
 run_analysis.R V1.0 
 =================== 

--------------------------------------------------------------------------
|The script executes the following steps for creating output tidy dataset|
--------------------------------------------------------------------------


Step1) 
------
To read the feature text file and store the data in a variable, this will be used later to give column names for recorded observations

Step2)
------
Read the activity_label text file and store the data in a variable, this will be used later to give names to activities which as of now are represented by a number in	
recorded observations, the list of numbers and corresponding name is furnished below
	
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
	
Step3)
------
Read test observations
	a) Read test data file x_test.txt
	b) Read test activity file y_test.txt
	c) Read test subject file subject_test.txt
	d) Column bind all the three data frames to have test observations for subjects based on activities	

Step4)
------
Read train observations
	a) Read train data file x_train.txt
	b) Read train activity file y_train.txt
	c) Read train subject file subject_train.txt
	d) Column bind all the three data frames to have train observations for subjects based on activities
	
Step5) 
------
Row bind the above two datasets

Step6)
------
Create column indicies for subsetting the output dataset of Step5 for extracting only mean() and std() observations, column names are also saved to replace the default
column names in the output dataset of Step5
Assumption: Only those columns are selected which either have a mean() char string or a std() char string, this was achieved using fixed = TRUE grep function argument 

Step7) 
------
Replaced activity number with corresponding activity name (ref table in Step2), for example if activity in the observation is mentioned as 2, it will be replaced by 
"WALKING_UPSTAIRS"

Step8)
------
Replaced default column names with the right column names stored in Step6 using feature.txt file

Step9)
------
invoked dplyr package to first group the output dataset of step 8 by Subject & Activity and later applied aggreated mean function to all other columns of the observation,
the output of this is the tidy dataset, it is then written to a varible coerced as a data frame

Step10)
Tidy datset was then written to a text file
