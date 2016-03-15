## After downloading the 'UCI HAR Dataset' file into our working directory, we set it 
## as our new working directory.


setwd(paste(as.character(getwd()), "/UCI HAR Dataset", sep = ""))

## We first need to read the activity labels and edit them so that they are clean,
## so we remove the underscores and replace them with spaces

act_labels <- read.table("activity_labels.txt")
activities <- as.vector(act_labels[,2])
activities <- gsub("_", " ", activities)


## And we also need the read the 'features' file so that we can get the names of 
## our variables

features <- read.table("features.txt")


## Within the 'HCI HAR Dataset' there is a folder called 'test', after setting 
## our working directory here we read the data inside the test file 

setwd(paste(as.character(getwd()), "/test", sep = ""))

x_test <- read.table("X_test.txt", col.names = features[,2])
y_test <- read.table("y_test.txt", col.names = "Activity")
sub_test <- read.table("subject_test.txt", col.names = "Subject")


## We merge the 'Subject' and 'Activity' variables with the data frame

test <- cbind.data.frame(sub_test, y_test, x_test)


## Within the 'HCI HAR Dataset' there is a folder called 'train', after setting 
## our working directory here we read the data inside the train file

setwd('..')
setwd(paste(as.character(getwd()), "/train", sep = ""))

x_train <- read.table("X_train.txt", col.names = features[,2])
y_train <- read.table("y_train.txt", col.names = "Activity")
sub_train <- read.table("subject_train.txt", col.names = "Subject")


## We merge the 'Subject' and 'Activity' variables with the data frame

train <- cbind.data.frame(sub_train, y_train, x_train)


## And then we merge the 'train' and 'test' data frames

testrain = merge(test, train, all = TRUE)


## Clean it up a bit by capitalizing the M in 'mean' and the S in 'std'
## as well as removing the "-" from the column names

names(testrain) <- gsub("mean", "Mean", names(testrain)) 
names(testrain) <- gsub("std", "Std", names(testrain)) 
names(testrain) <- gsub("-", "", names(testrain)) 


## We subset the columns with data on the means of the variables, their 
## standard deviations, the subjects and the activities

require(PerformanceAnalytics)

meanstds <- testrain[,colnames(testrain)[grep("Mean|Std|Activity|Subject",
                                           colnames(testrain))]]


## We group the variables by subject and by activity (in that order) so that we can 
## get, for each activity any particular subject does, the means of the other variables

library(dplyr)

Clean_DF <- meanstds %>%
    group_by(Subject, Activity) %>%
    summarise_each(funs(mean)) 


## We replace the numbers in the 'Activity' column for their respective activity 
## names

for (i in 1:6){
    Clean_DF$Activity[Clean_DF$Activity==i] <- activities[i]
}

## And we create the text file with the clean data set in our 'UCI HAR Dataset' file

setwd('..')
write.table(Clean_DF, file = "Clean_DF.txt", row.name=FALSE)

