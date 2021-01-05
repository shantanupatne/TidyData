library(dplyr)

#Read all features and activities
features<-read.table("features.txt",header = FALSE)
name <- read.table("activity_labels.txt", header = FALSE)

#read the subjects data and rename the column to "subjects
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
names(subject_test) <- "Subjects"
names(subject_train) <- "Subjects"

#read the training data
ftrain <- read.table("train/X_train.txt")
atrain <- read.table("train/y_train.txt")

#assign descriptive activity names to the activity table according to the levels
for(j in atrain){
  atrain <- name[j,]
}
#assign feature names to the feature table
names(ftrain) <- features$V2

#read test data
ftest <- read.table("test/X_test.txt")
atest <- read.table("test/y_test.txt")

#assign descriptive activity names to the activity table according to the levels
for(i in atest){
  atest <- name[i,]
}

#assign feature names to the feature table
names(ftest) <- features$V2

#Create training set and test set from the above tables
train_set <- cbind(subject_train, activity = atrain$V2, ftrain)
test_set <- cbind(subject_test, activity = atest$V2, ftest)

#Merge the two sets
merged_set <- rbind(train_set, test_set)

#Extract only mean and std measurements from the merged set
matched_set <- merged_set %>% select(1,2,matches("mean|std"))

#Renaming the variables using descriptive names
t <- names(matched_set)
t<-gsub("tBody*", "Time Domain Body ",t)
t<-gsub("tGravity*","Time Domain Gravity ",t)

t<-gsub("fBody*", "Freq Domain Body ",t)
t<-gsub("fGravity*","Freq Domain Gravity ",t)

t<-gsub("*Gyro*","Gyro ",t)
t<-gsub("*Acc*","Accelerometer ",t)

t<-gsub("*Mag*","FFT Magnitude ",t)
t<-gsub("*Jerk*","Jerk ", t)

t<-gsub("mean()", "Signal Mean ", t)
t<-gsub("std()", "Signal SD", t)
names(matched_set) <- t

#create a tidy dataset from the above datasets
tidydata<-matched_set%>%group_by(Subjects,activity)%>%summarise_all(mean)

#Write the tidy dataset to output.
write.table(tidydata, "TidyData.txt", row.name=FALSE)
