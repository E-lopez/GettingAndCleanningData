run_analysis <- function(){
      
      testLoc <- ("C:\\YOUR PATH\\UCIData\\test")
      trainLoc <- ("C:\\YOUR PATH\\UCIData\\train")
      featsLoc <- ("C:\\YOUR PATH\\UCIData\\features.txt")
      ActLablesLoc <- ("C:\\YOUR PATH\\UCIData\\activity_labels.txt")                  
      
      #Merges the training and the test sets to create one data set.
      
      files_test  <- list.files(testLoc, pattern = ".txt", full.names = T)
      files_train <- list.files(trainLoc, pattern = ".txt", full.names = T)
      tables_tst <- lapply(files_test, read.table)
      tables_trn <- lapply(files_train, read.table)
      preNames <- read.table(featsLoc)
      Names <- as.vector(preNames[,2])
      
      
      Train  <- cbind(tables_trn[[1]], tables_trn[[3]], tables_trn[[2]])
      Test   <- cbind(tables_tst[[1]], tables_tst[[3]], tables_tst[[2]]) 
      merged <- rbind(Train, Test)
      colnames(merged) <- c("subject", "ActLabel", Names)
      
      print("Succesfully Merged")
      #Extracts only the measurements on the mean and standard deviation for 
      #each measurement. 
      meanIndex <- grep("mean", c(colnames(merged)), ignore.case = TRUE, value = FALSE)
      stdIndex  <- grep("std", c(colnames(merged)), ignore.case = TRUE, value = FALSE)
      merged_sub <- merged[, c(1, 2, meanIndex, stdIndex)]

      #Uses descriptive activity names to name the activities in the data set
      
      actIndex <- read.table(ActLablesLoc)
      actIndex <- as.character(actIndex[,2])
      index = NULL
      for(i in 1:6){
            index <- grep(i, c(merged_sub$ActLabel)) 
            merged_sub$ActLabel[c(index)] <- c(actIndex[i])
      }        
      
      
      print("Succesfully recoded")
      
      #Appropriately labels the data set with descriptive variable names. 
      colnames(merged_sub) <- gsub("Acc", "Accelerometer", colnames(merged_sub))
      colnames(merged_sub) <- gsub("Mag", "Magnitude", colnames(merged_sub))
      colnames(merged_sub) <- gsub("Gyro", "Gyroscope", colnames(merged_sub))
      colnames(merged_sub) <- gsub("BodyBody", "Body", colnames(merged_sub))
      #From the data set in step 4, creates a second, independent 
      #tidy data set with the average of each variable for each activity and each subject.
      
      library(data.table)
      final <- as.data.table(merged_sub)
            setkey(final, subject, ActLabel)
                  Avg_data <- final[, lapply(.SD, mean), by = .(subject, ActLabel)]
                  
      if(!file.exists("dataAverage.txt")){
     
      file.create("C:\\Users\\Alejandro\\Documents\\R\\Getting_and_cleanning_Data\\UCIData\\dataAverage.txt")
      fileDest <- ("C:\\Users\\Alejandro\\Documents\\R\\Getting_and_cleanning_Data\\UCIData\\dataAverage.txt")
      write.table(Avg_data, fileDest, row.names = FALSE)
                                    }else{print("Error : File already exists")}
      
      
      if(!file.exists("Tidy_data.txt")){
            
      file.create("C:\\Users\\Alejandro\\Documents\\R\\Getting_and_cleanning_Data\\UCIData\\Tidy_data.txt")
      Dest <- ("C:\\Users\\Alejandro\\Documents\\R\\Getting_and_cleanning_Data\\UCIData\\Tidy_data.txt")
      write.table(merged_sub, Dest)
                                    }else{print("Error : File already exists")}
      
      View(Avg_data)
      print("Success")
      
     
      
}

