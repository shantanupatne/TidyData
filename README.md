# TidyData

The project is based on data collected from the accelerometers from the Samsung Galaxy smarphone. The aim of the project is to obtain raw, unintelligible data and process it into a tidy dataset of relevant features for further analysis.  

Original raw data and description available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

---

## "run_analysis.R"
***Information of R script used for Data Cleaning Project.***  
Created an R script that takes in raw data and cleans it.  
Following steps are achieved:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

***The output dataset is named "TidyData" and is uploaded in .csv and .txt format.***

---
