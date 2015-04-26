run_analysis <- function() {
        
        library(reshape2)
        library(dplyr)
        
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        
        if(!("UCI HAR Dataset" %in% list.files())) {
                download.file(url, "directory.zip", mode="wb")
                unzip("directory.zip")
        }
        
        subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
        subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
        
        activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
        activityTest <- read.table("UCI HAR Dataset/test/y_test.txt")
        
        featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
        featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt")
        
        activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
        featureLabels <- read.table("UCI HAR Dataset/features.txt")
        
        ### Merge training and test sets to create one data set
        subjects <- rbind(subjectTest, subjectTrain)
        activities <- rbind(activityTest, activityTrain)
        features <- rbind(featuresTest, featuresTrain)
        
        data <- data.frame(subjects, activities, features)
        
        ### Labels data set with descriptive variable name
        names(data) <- c("subject", "activity", as.character(featureLabels[, 2]))
        
        ### Replace numerical activity ID with descriptive activity ID
        i <- 1
        activityLabels$V2 <- tolower(activityLabels$V2)
        activityLabels$V2 <- gsub("_", "", activityLabels$V2)
        activityLabels$V2 <- gsub("stairs", "", activityLabels$V2)
        for (a in activityLabels$V2) {
                data$activity <- gsub(i, activityLabels$V2[[i]], data$activity)
                i <- i + 1
        }
        
        ### Extracts measurements on mean and standard deviation
        extract<-c(1:2, sort(c(grep("mean\\(\\)", names(data)),
                               grep("std\\(\\)", names(data)))))
        dataExtract <- data[, extract]
        names(dataExtract) <- gsub("\\)", "", gsub("\\(", "", names(dataExtract)))
        names(dataExtract) <- tolower(gsub("\\-", "_", names(dataExtract)))
        
        ### Create a second, independent tidy data set with 
        ### average of each variable for each activity and each subject
        melted <- melt(dataExtract, id.vars = c("subject", "activity"))
        summary <- dcast(melted, subject + activity ~ ... , mean)
        summary <- melt(summary, id.vars = c("subject", "activity"))
        names(summary)[3:4] <- c("feature", "mean")
        
        index <- 1
        summary$feature <- as.character(summary$feature)
        for(i in summary$feature) {
                measure <- strsplit(i, NULL)
                measure[[1]][[2]] <- paste("_", measure[[1]][[2]], sep="")
                summary$feature[index] <- sapply(measure, paste, collapse = "")
                index <- index + 1
        }
        summary$feature <- as.factor(summary$feature)
        
        write.table(summary, "./summary.txt", row.names = FALSE)
}

run_analysis()
