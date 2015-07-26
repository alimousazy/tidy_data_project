# Tidy data course project

Tidy data script is a script which clean data produced by phone sensors experminent 

### Problem Statement 
 > One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
 > http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 > Here are the data for the project:
 > https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###  Things to be done

- [x] Merges the training and the test sets to create one data set.

- [x] Extracts only the measurements on the mean and standard deviation for each measurement. 

- [x] Uses descriptive activity names to name the activities in the data set Appropriately labels the data set with descriptive variable names. 

- [x] From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Prerequisite Packages

Please install the following package before running the script

- dplyr
- data.table
- reshape2

### steps to run the script 
- `$cd project-folder`
- `$R`
- `>source run_analysis.R`
  
Result will be found in tidy_data.txt, which contains the average of each variable for each activity and each subject.

