## run_analysis.R ##

# This script performs the following steps on the UCI HAR Dataset:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.

## Please set the working directory to the "UCI HAR Dataset" folder 


## 1. Merge the training and the test sets to create one data set.

# Read-in the data from the files
FeaturesTrain   <- read.table('./train/x_train.txt',header=FALSE)        #imports x_train.txt
ActivityTrain   <- read.table('./train/y_train.txt',header=FALSE)        #imports y_train.txt
SubjectTrain    <- read.table('./train/subject_train.txt',header=FALSE)  #imports subject_train.txt

FeaturesTest    <- read.table('./test/x_test.txt',header=FALSE)          #imports x_test.txt
ActivityTest    <- read.table('./test/y_test.txt',header=FALSE)          #imports y_test.txt
SubjectTest     <- read.table('./test/subject_test.txt',header=FALSE)    #imports subject_test.txt

# Concatenate the data tables by rows
dataFeatures <- rbind(FeaturesTrain, FeaturesTest)
dataActivity <- rbind(ActivityTrain, ActivityTest)
dataSubject  <- rbind(SubjectTrain, SubjectTest)

# Assign column names
names(dataSubject)  <- c("subject")
names(dataActivity) <- c("activity")
features <- read.table('./features.txt', header=FALSE)                   #imports features.txt
names(dataFeatures) <- features$V2

# Merge columns to get all the data
dataCombine <- cbind(dataSubject, dataActivity)
allData     <- cbind(dataFeatures, dataCombine)

## 2. Extract only the measurements on the mean and standard deviation for each measurement. 

subdataFeaturesNames <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]

# Subset the data frame allData by seleted names of Features
selectedNames <- c(as.character(subdataFeaturesNames), "subject", "activity" )
Data <- subset(allData, select = selectedNames)

## 3. Use descriptive activity names to label the activities in the data set

# Read-in descriptive activity names from activity_labels.txt
activityType <- read.table('./activity_labels.txt', header=FALSE)      #imports activity_labels.txt

# Factorize the variable activity from Data using descriptive activity types
Data$activity <- factor(Data$activity, labels=activityType[,2])

## 4. Appropriately label the dataset with descriptive activity names. 

names(Data) <- gsub("^t", "time", names(Data))
names(Data) <- gsub("^f", "frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("BodyBody", "Body", names(Data))

## 5. From the dataset in step 4, creates a second, independent tidy dataset 
##    with the average/mean of each variable for each subject and each activity.

newData <- aggregate(. ~subject + activity, Data, mean)
newData <- newData[order(newData$subject, newData$activity),]

write.table(newData, file = "tidydata.txt", row.name=FALSE, quote = FALSE, sep = '\t')

