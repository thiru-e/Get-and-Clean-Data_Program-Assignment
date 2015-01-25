library(plyr)
library(reshape2)

#Step 1
  
  #Combining activity and subject information with test and train data

          testDB<-read.table("X_test.txt")
          testY<-read.table("y_test.txt")
          testSub<-read.table("subject_test.txt")
      
      testDB<-cbind(testDB,testY,testSub)
            
           trainDB<-read.table("X_train.txt")
           trainY<-read.table("y_train.txt")
           trainSub<-read.table("subject_train.txt")
      
      trainDB<-cbind(trainDB,trainY,trainSub)
      
  #Combining test and train datasets and assigning column names from features.txt
      
      totalDB<-rbind(testDB,trainDB)
      
          coltemp<-read.table("features.txt")
          colNames<-coltemp[[2]]
      
          colnames(totalDB)<-colNames
          names(totalDB)[562]<-"activity"
          names(totalDB)[563]<-"subject"
      
#Step 2 - Extracting columns containing 'mean' and 'std dev' values
      
      totalDB2<-totalDB[ , grepl("mean|std",names(totalDB))]
      totalDB3<-cbind(totalDB2,totalDB[562:563])
      
#Step 3 - Use Activity Description to describe Activtiy type
      
      ActivityDB<-read.table("activity_labels.txt",header=F)    
      totalDB3$ActType<-ActivityDB$V2[match(totalDB3$activity,ActivityDB$V1)]
      totalDB4<- totalDB3[-grep('activity',colnames(totalDB3))]
         
# Step 4 - Label data with descriptive names
          
          colN<-names(totalDB4)
          
            colN <- gsub("tBody", "Time.Body.", colN)
            colN <- gsub("tGravity", "Time.Gravity.", colN)
            
            
            colN <- gsub("fBody", "Freq.Body.", colN)
            colN <- gsub("fGravity", "Freq.Gravity.", colN)
            
            
            colN <- gsub("\\-mean\\(\\)\\-", ".Mean.", colN)
            colN <- gsub("\\-std\\(\\)\\-", ".Std.", colN)
            
            
            colN <- gsub("\\-mean\\(\\)", ".Mean", colN)
            colN <- gsub("\\-std\\(\\)", ".Std", colN)
            
            colN <- gsub("\\-meanFreq\\(\\)", ".MeanFreq", colN)
            colN <- gsub("Body.Body", "Body.", colN)
          
            names(totalDB4)<-colN
          
#Step 5 - Average of each variable by subject and activity
          
          tidy_mean <- ddply(melt(totalDB4, id.vars=c("subject", "ActType")), .(subject, ActType), summarise, MeanSamples=mean(value))
          write.csv(tidy_mean, file = "tidy_mean.txt",row.names = FALSE)
          write.csv(totalDB4, file = "tidy_dataset.txt",row.names = FALSE)
          
          
      