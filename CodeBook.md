---
title: "CodeBook"
author: "Davis Clark"
date: "Sunday, April 19, 2015"
output: html_document
---
A code book called CodeBook.md that describes: 

 - the variables 
 - the data 
 - any transformations or work that you performed to clean up the data 

The processed dataset found in summary.txt consists 180 observations in the rows and 66 feature vectors in the columns (not including the subject and activity factors.)

The data are derived from the Human Activity Recognition Using Smartphones Dataset. 

Feature Selection 
================

The features selected for this database come from:

Time domain accelerometer 3-axial raw signal: tAcc-XYZ (prefix 't' to denote time)
        - captured at a constant rate of 50 Hz
        - Filtered using a median filter and 
        - Filtered using a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Time domain gyroscope 3-axial raw signal: tGyro-XYZ (prefix 't' to denote time), 
        - captured at a constant rate of 50 Hz
        - Filtered using a median filter and 
        - Filtered using a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Time domain body acceleration signal: tBodyAcc-XYZ
        - derived from acceleration signal
        - Filtered using another low pass Butterworth filter with a corner frequency of 0.3 Hz
Time domain gravity acceleration signals: tGravityAcc-XYZ
        - derived from acceleration signal
        - Filtered using another low pass Butterworth filter with a corner frequency of 0.3 Hz

Time domain body acceleration jerk signal: tBodyAccJerk-XYZ  
        - derived from body linear acceleration 
Time domain body gyroscope jerk signal: tBodyGyroJerk-XYZ 
        - derived from angular velocity

tBodyAccMag: magnitude of these three-dimensional signals
        - calculated using the Euclidean norm
tGravityAccMag: magnitude of these three-dimensional signals
        - calculated using the Euclidean norm
tBodyAccJerkMag: magnitude of these three-dimensional signals
        - calculated using the Euclidean norm
tBodyGyroMag: magnitude of these three-dimensional signals 
        - calculated using the Euclidean norm
tBodyGyroJerkMag: magnitude of these three-dimensional signals
        - calculated using the Euclidean norm

fBodyAcc-XYZ: Fast Fourier Transform (FFT) was applied to produce frequency domain signals
fBodyAccJerk-XYZ: Fast Fourier Transform (FFT) was applied to produce frequency domain signals
fBodyGyro-XYZ: Fast Fourier Transform (FFT) was applied to produce frequency domain signals
fBodyAccJerkMag: Fast Fourier Transform (FFT) was applied to produce frequency domain signals
fBodyGyroMag: Fast Fourier Transform (FFT) was applied to produce frequency domain signals
fBodyGyroJerkMag: Fast Fourier Transform (FFT) was applied to produce frequency domain signals

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Note that only the mean and std were brought into the tidy data

The mean of each variable was found for each activity/subject combination



Information about the experimental study design you used

There should be a section called Study design that has a thourough description of how you collected the data 

There must be a section call Code book that describes each variable and its units

Information about the summary choices you made
               
tbodyacc xyz
tgravityacc xyz
tbodyaccjerk xyz
tbodygyro xyz
tbodygyrojerk xyz
tbodyaccmag
tgravityaccmag
tbodyaccjerkmag
tbodygyromag
tbodygyrojerkmag
fbodyacc xyz
fbodyaccjerk xyz
fbodygyro xyz
fbodyaccmag
fbodybodyaccjerkmag
fbodybodygyromag
fbodybodygyrojerkmag

mean 
std


