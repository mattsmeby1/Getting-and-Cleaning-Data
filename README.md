---
title: "Getting and Cleaning Data Assignment"
author: "Antonio Smeby Torres"
date: "March 15, 2016"
output: html_document
---

## Data Processing

After downloading the 'UCI HAR Dataset', we set it as our working directory.

Read the activity labels and edit them by removing the underscores and replacing them with spaces

We read the 'features' file so that we can get the names of our variables

Within the 'HCI HAR Dataset' there is a folder called 'test', after setting our working directory here we read the data inside the test file 

We merge the 'Subject' and 'Activity' variables with the data frame

Within the 'HCI HAR Dataset' there is a folder called 'train', after setting our working directory here we read the data inside the train file

We merge the 'Subject' and 'Activity' variables with the data frame

Merge the 'train' and 'test' data frames

Clean the new data frame by capitalizing the M in 'mean' and the S in 'std' as well as removing the "-" from the column names

We subset the columns with data on the means and standard deviations of the variables, as well as the columnsa that indicate the subjects and activities

We group the variables by subject and by activity (in that order) so that we can get, for each activity any particular subject does, the means of the other variables for each activity they did

And replace the numbers in the 'Activity' column with their respective activity names


