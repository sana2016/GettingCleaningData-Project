## Download the data from the URL in a new directory called data

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

## Unzip the data

unzip(zipfile="./data/Dataset.zip",exdir="./data")

## see the list of files in data
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files

##Read the data sets files 
trainfile <- file.path(path_rf,"train","X_train.txt")
trainData <- read.table(trainfile,header =FALSE)
subtrainfile <- file.path(path_rf,"train","subject_train.txt")
subtrainData <- read.table(subtrainfile,header =FALSE)
trainLabelfile <- file.path(path_rf,"train","Y_train.txt")
trainLabelData <- read.table(trainLabelfile,header =FALSE)

testfile <- file.path(path_rf,"test","X_test.txt")
testData <- read.table(testfile,header =FALSE)
subtestfile <- file.path(path_rf,"test","subject_test.txt")
subtestData <- read.table(subtestfile,header =FALSE)
testLabelfile <- file.path(path_rf,"test","Y_test.txt")
testLabelData <- read.table(testLabelfile,header =FALSE)


## Merge train and test data

subjectData <- rbind(subtrainData,subtestData)
LabelData <- rbind(trainLabelData,testLabelData)
SetData <- rbind(trainData,testData)

## set names to variables

names(subjectData) <- c("Subject")
names(LabelData) <- c("Activity")

## Read the features labels file
features <- read.table(file.path(path_rf,"features.txt"),header =FALSE)
names(SetData) <- features$V2

## Merge columns
dataCombine <- cbind(subjectData,LabelData)
data <- cbind(SetData, dataCombine)

## Extracts only the measurements on the mean and standard deviation for each measurement.
## take Names of Features with "mean()" or "std()"
subfeatures<-features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
selectedNames<-c(as.character(subfeatures), "Subject", "Activity" )
data<-subset(data,select=selectedNames)

##Uses descriptive activity names to name the activities in the data set
activityNames <- read.table(file.path(path_rf,"activity_labels.txt"),header =FALSE)
data$Activity <- factor(data$Activity, levels = activityNames$V1, labels = activityNames$V2)

##Appropriately labels the data set with descriptive variable names.

names(data) <- gsub('^t', "time", names(data))
names(data) <- gsub('^f', "frequency", names(data))
names(data) <- gsub('Acc', "accelerometer", names(data))
names(data) <- gsub('Gyro', "Gyroscope", names(data))
names(data) <- gsub('Mag', "Magnitude", names(data))
names(data) <- gsub('BodyBody', "Body", names(data))
names(data) <- gsub('\\.mean', ".Mean", names(data))
names(data) <- gsub('\\.std', ".StandardDeviation", names(data))
names(data) <- gsub('Jerk', "AngularVelocity", names(data))

## create and import a tidy data
library(plyr)
data2<-aggregate(. ~Subject + Activity, data, mean)
data2<-data2[order(data2$Subject,data2$Activity),]
write.table(data2, file = "tidydata.txt",row.name=FALSE)
