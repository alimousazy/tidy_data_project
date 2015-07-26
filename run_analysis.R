library("dplyr")
library("data.table")
library("reshape2")
setwd("./")
tidy_data <- function () {
  #loading labels 
  feature <- read.table("UCI HAR Dataset/features.txt")
  activity_label <- read.table("UCI HAR Dataset/activity_labels.txt")
  for(x in c("test", "train")) {
    #loading the data tables for the test
    x_data <- read.table(paste("UCI HAR Dataset/", x, "/X_", x,".txt", sep = ""))
    y_data <- read.table(paste("UCI HAR Dataset/", x, "/y_", x,".txt", sep = ""))
    subject <- read.table(paste("UCI HAR Dataset/", x, "/subject_", x,".txt", sep = ""))
    #Repalce activity with text (denormalize it )
    y_data$V1 <- activity_label[y_data$V1, c("V2")]
    #rename colms to match data labes 
    colnames(x_data) <- as.character(feature$V2)
    colnames(y_data) <- c("Activity")
    colnames(subject) <- c("Subject.Number")
    #extract mean and std only
    x_data <- x_data[,colnames(x_data)[grep("mean|std", colnames(x_data))]]
    #bind data togther 
    if(!exists("total")) {
       total <- cbind(x_data, y_data, subject)
    }
    else {
      total <- rbind(total, cbind(x_data, y_data, subject))
    } 
  }
 total
}
all <- tidy_data()
expand <- melt(all, c("Activity", "Subject.Number"))
tidy <- group_by(expand, Activity, Subject.Number,variable) %>% summarise(mean(value))
tidy <- dcast(tidy, Activity + Subject.Number ~ variable, value.var = "mean(value)")
write.table(tidy, file="tidy_data.txt", row.names=FALSE)

