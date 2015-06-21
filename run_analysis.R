
#--------------------
#run_analysis.R V1.0|
#--------------------

#Data collected from the accelerometers from the Samsung Galaxy S smartphone downloaded as zip file in working directory.

# Data files have been downloaded in 
#work library/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test         - for test data
#work library/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train        - for train data


##################################################################################################
## Amendment History                                                                            ##
##                                                                                              ##
## Manish Gupta         21st Jun        Initial Version                                         ##
## Manish Gupta         21st Jun        Added more comments                                     ##
##################################################################################################

directory       = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"                #read features.txt,activity_labels.txt
directoryTest   = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test"           #read test measurements
directoryTrain  = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train"          #read train measurements

#Read features.txt - for replacing measurements default column names 
setwd(file.path("~",directory))
featureNames = read.table("features.txt")

#Read activity labels - for replacing Activities with actual names
setwd(file.path("~",directory))
activityNames = read.table("activity_labels.txt")


#Read Test Data
setwd(file.path("~",directoryTest))
testData = read.table("X_test.txt")
testActivity = read.table(("y_test.txt"))
names(testActivity) = c("Activity")
testSubject = read.table(("subject_test.txt"))
names(testSubject) = c("Subject")
finalTestData = cbind(testActivity,testData,testSubject)


#Read Train Data
setwd(file.path("~",directoryTrain))
trainData = read.table("X_train.txt")
trainActivity = read.table(("y_train.txt"))
names(trainActivity) = c("Activity")
trainSubject = read.table(("subject_train.txt"))
names(trainSubject) = c("Subject")
finalTrainData = cbind(trainActivity,trainData,trainSubject)

#rbind both the data
#this is part 1 "Merges the training and the test sets to create one data set."
finalData = rbind(finalTestData,finalTrainData)


#this is for part 2 "Extracts only the measurements on the mean and standard deviation for each measurement."
#here the script is finding mean() and std() as character string in column names and extracting the data, reading feature.txt
columnMeanIndices = grep("mean()",featureNames$V2,fixed=TRUE)
columnStdIndices = grep("std()",featureNames$V2,fixed=TRUE)
columnIndices = sort(c(columnMeanIndices,columnStdIndices))
columnNames = as.character(featureNames$V2[columnIndices])
columnFeatureNames = c("Activity",columnNames,"Subject")
columnIndices = columnIndices + 1
finalObsData = finalData[,c(1,columnIndices,563)]


#this is for part 3 "Uses descriptive activity names to name the activities in the data set"
for(i in 1:6) {
        finalObsData$Activity[finalObsData$Activity == i] <- as.character(activityNames$V2[activityNames$V1 == i])
}

#this is part 4 "Appropriately labels the data set with descriptive variable names."
names(finalObsData) <- columnFeatureNames


#this is for part 5 "From the data set in step 4, creates a second, independent tidy data set with the average of each variable"
#                   "for each activity and each subject. This will write the output file in tidyData.txt"
#invoke dplyr routine
library(dplyr)
midTidyData <- finalObsData %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))
tidyData = as.data.frame(midTidyData)
setwd("~")
write_status <- write.table(tidyData,file="./tidyData.txt",row.names=FALSE)
