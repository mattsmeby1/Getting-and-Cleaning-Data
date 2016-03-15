---
title: "Code Book"
author: "Antonio Smeby Torres"
date: "March 2, "
output: html_document
---
## The 'Clean_DF' Data Frame

This is a 180x88 data frame. 

### The first two variables (columns)

*Subject*  :: An integer variable ranging from 1 to 30, where each number represents a subject.                            
*Activity* :: A character vector that represents a specific activity ("WALKING", "WALKING UPSTAIRS", WALKING DOWNSTAIRS", "SITTING", "STANDING" AND "LAYING").  

### The other 86

#### The rest are all numeric variables that represent the total mean of each of the factors analized in the study by specific activity and subject:

*tBodyAcc.Mean...X*                   
*tBodyAcc.Mean...Y*                   
*tBodyAcc.Mean...Z*                   
*tBodyAcc.Std...X*                    
*tBodyAcc.Std...Y*                    
*tBodyAcc.Std...Z*                    
*tGravityAcc.Mean...X*                
*tGravityAcc.Mean...Y*                
*tGravityAcc.Mean...Z*                
*tGravityAcc.Std...X*                 
*tGravityAcc.Std...Y*                 
*tGravityAcc.Std...Z*                 
*tBodyAccJerk.Mean...X*               
*tBodyAccJerk.Mean...Y*               
*tBodyAccJerk.Mean...Z*               
*tBodyAccJerk.Std...X*                
*tBodyAccJerk.Std...Y*                
*tBodyAccJerk.Std...Z*                
*tBodyGyro.Mean...X*                  
*tBodyGyro.Mean...Y*                  
*tBodyGyro.Mean...Z*                  
*tBodyGyro.Std...X*                   
*tBodyGyro.Std...Y*                   
*tBodyGyro.Std...Z*                   
*tBodyGyroJerk.Mean...X*              
*tBodyGyroJerk.Mean...Y*              
*tBodyGyroJerk.Mean...Z*              
*tBodyGyroJerk.Std...X*               
*tBodyGyroJerk.Std...Y*               
*tBodyGyroJerk.Std...Z*               
*tBodyAccMag.Mean..*                  
*tBodyAccMag.Std..*                   
*tGravityAccMag.Mean..*               
*tGravityAccMag.Std..*                
*tBodyAccJerkMag.Mean..*              
*tBodyAccJerkMag.Std..*               
*tBodyGyroMag.Mean..*                 
*tBodyGyroMag.Std..*                  
*tBodyGyroJerkMag.Mean..*             
*tBodyGyroJerkMag.Std..*              
*fBodyAcc.Mean...X*                   
*fBodyAcc.Mean...Y*                   
*fBodyAcc.Mean...Z*                   
*fBodyAcc.Std...X*                    
*fBodyAcc.Std...Y*                    
*fBodyAcc.Std...Z*                    
*fBodyAcc.MeanFreq...X*               
*fBodyAcc.MeanFreq...Y*               
*fBodyAcc.MeanFreq...Z*               
*fBodyAccJerk.Mean...X*               
*fBodyAccJerk.Mean...Y*               
*fBodyAccJerk.Mean...Z*               
*fBodyAccJerk.Std...X*                
*fBodyAccJerk.Std...Y*                
*fBodyAccJerk.Std...Z*                
*fBodyAccJerk.MeanFreq...X*           
*fBodyAccJerk.MeanFreq...Y*           
*fBodyAccJerk.MeanFreq...Z*           
*fBodyGyro.Mean...X*                  
*fBodyGyro.Mean...Y*                  
*fBodyGyro.Mean...Z*                  
*fBodyGyro.Std...X*                   
*fBodyGyro.Std...Y*                   
*fBodyGyro.Std...Z*                   
*fBodyGyro.MeanFreq...X*              
*fBodyGyro.MeanFreq...Y*              
*fBodyGyro.MeanFreq...Z*              
*fBodyAccMag.Mean..*                  
*fBodyAccMag.Std..*                   
*fBodyAccMag.MeanFreq..*              
*fBodyBodyAccJerkMag.Mean..*          
*fBodyBodyAccJerkMag.Std..*           
*fBodyBodyAccJerkMag.MeanFreq..*      
*fBodyBodyGyroMag.Mean..*             
*fBodyBodyGyroMag.Std..*              
*fBodyBodyGyroMag.MeanFreq..*         
*fBodyBodyGyroJerkMag.Mean..*         
*fBodyBodyGyroJerkMag.Std..*          
*fBodyBodyGyroJerkMag.MeanFreq..*     
*angle.tBodyAccMean.gravity.*         
*angle.tBodyAccJerkMean..gravityMean.*
*angle.tBodyGyroMean.gravityMean.*    
*angle.tBodyGyroJerkMean.gravityMean.*
*angle.X.gravityMean.*                
*angle.Y.gravityMean.*                
*angle.Z.gravityMean.* 