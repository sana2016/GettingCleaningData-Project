# This is the codeBook of the project

## General Contexte

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Purpose of the project

Get a tidy data file from the original data with some transformation

#Steps to get the tidy data file

Download and unzip the original data

Explore the content of the original data set (read the README file and the files providing information about the variables)

Read the data into R varibales

The data is composed of three elements : Subjects, Activities and features

Merge the train and test data for each element using rbind

Put the write names for the each element

Create one data set with those three element using cbind 

Extract only the measurements on the mean and standard deviatiation from the created data 

Uses descriptive activity names to name the activities in the data set

Appropriately labels the data set with descriptive variable names

create and import a tidy data

## List of the varibales

Subject

Activity

timeBodyaccelerometer-mean()-X

timeBodyaccelerometer-mean()-Y

timeBodyaccelerometer-mean()-Z

timeBodyaccelerometer-std()-X

timeBodyaccelerometer-std()-Y

timeBodyaccelerometer-std()-Z

timeGravityaccelerometer-mean()-X

timeGravityaccelerometer-mean()-Y

timeGravityaccelerometer-mean()-Z

timeGravityaccelerometer-std()-X

timeGravityaccelerometer-std()-Y

timeGravityaccelerometer-std()-Z

timeBodyaccelerometerAngularVelocity-mean()-X

timeBodyaccelerometerAngularVelocity-mean()-Y

timeBodyaccelerometerAngularVelocity-mean()-Z

timeBodyaccelerometerAngularVelocity-std()-X

timeBodyaccelerometerAngularVelocity-std()-Y

timeBodyaccelerometerAngularVelocity-std()-Z

timeBodyGyroscope-mean()-X

timeBodyGyroscope-mean()-Y

timeBodyGyroscope-mean()-Z

timeBodyGyroscope-std()-X

timeBodyGyroscope-std()-Y

timeBodyGyroscope-std()-Z

timeBodyGyroscopeAngularVelocity-mean()-X

timeBodyGyroscopeAngularVelocity-mean()-Y

timeBodyGyroscopeAngularVelocity-mean()-Z

timeBodyGyroscopeAngularVelocity-std()-X

timeBodyGyroscopeAngularVelocity-std()-Y

timeBodyGyroscopeAngularVelocity-std()-Z

timeBodyaccelerometerMagnitude-mean()

timeBodyaccelerometerMagnitude-std()

timeGravityaccelerometerMagnitude-mean()

timeGravityaccelerometerMagnitude-std()

timeBodyaccelerometerAngularVelocityMagnitude-mean()

timeBodyaccelerometerAngularVelocityMagnitude-std()

timeBodyGyroscopeMagnitude-mean()

timeBodyGyroscopeMagnitude-std()

timeBodyGyroscopeAngularVelocityMagnitude-mean()

timeBodyGyroscopeAngularVelocityMagnitude-std()

frequencyBodyaccelerometer-mean()-X

frequencyBodyaccelerometer-mean()-Y

frequencyBodyaccelerometer-mean()-Z

frequencyBodyaccelerometer-std()-X

frequencyBodyaccelerometer-std()-Y

frequencyBodyaccelerometer-std()-Z

frequencyBodyaccelerometerAngularVelocity-mean()-X

frequencyBodyaccelerometerAngularVelocity-mean()-Y

frequencyBodyaccelerometerAngularVelocity-mean()-Z

frequencyBodyaccelerometerAngularVelocity-std()-X

frequencyBodyaccelerometerAngularVelocity-std()-Y

frequencyBodyaccelerometerAngularVelocity-std()-Z

frequencyBodyGyroscope-mean()-X

frequencyBodyGyroscope-mean()-Y

frequencyBodyGyroscope-mean()-Z

frequencyBodyGyroscope-std()-X

frequencyBodyGyroscope-std()-Y

frequencyBodyGyroscope-std()-Z

frequencyBodyaccelerometerMagnitude-mean()

frequencyBodyaccelerometerMagnitude-std()

frequencyBodyaccelerometerAngularVelocityMagnitude-mean()

frequencyBodyaccelerometerAngularVelocityMagnitude-std()

frequencyBodyGyroscopeMagnitude-mean()

frequencyBodyGyroscopeMagnitude-std()

frequencyBodyGyroscopeAngularVelocityMagnitude-mean()

frequencyBodyGyroscopeAngularVelocityMagnitude-std()
