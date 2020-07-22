# CodeBook
Codebook containing information about all the variables and transformations applied during the data cleaning project.

---

### Cleaned Data Variables are:
- Subject.
- Activity performed by the subject.  
- Mean Accelerometer and Gyroscope readings for:
    1. Body Acceleration and its FFT
    2. Body Jerk and its FFT
    3. Gravity Acceleration and its FFT
    4. Angle measurements  
- Standard Deviation Accelerometer and Gyroscope readings for:
    1. Body Acceleration and its FFT
    2. Body Jerk and its FFT
    3. Gravity Acceleration and its FFT
    4. Angle measurements

***Reading of activities taken in 3 dimensions (X, Y, Z). 
Readings taken for time as well as freq domain.***

---

### Transformations Applied :
- Collected data files and compiled according to requirement.
- Assigned appropriate names to variables.
- Created a merged set from the training and test sets.
- Assigned descriptive activity names
- Grouped and arranged the dataset based on the subject and the activity.

---

### Code variables:
- `features` contains the abbreviated names of the measurements.  
[561 rows of 2 columns] 
- `name` contains all the different activities.  
[6 rows of 2 columns]
- `ftrain` & `ftest` contain the training and test measurement data.  
[7352 rows and 2947 rows of 561 columns respectively]
- `atrain` & `atest` contain the activities in the training and test sets.  
Names from the `name` table have been assigned.  
[7352 rows and 2947 rows of 2 columns respectively]
- `subject_train` & `subject_test` contain the subject data.  
[Single Column with 7352 rows and 2947 rows respectively]
- `train_set` is the combined table of all the training data.  
[7352 rows of 563 columns]
- `test_set` is the combined table of all the test data.  
[2947 rows of 563 columns]
- `merged_set` is the complete dataset combining the test and train datasets.  
[10299 rows of 563 columns]
- `matched_set` is the dataset containing only the mean and std measurements from the readings.  
[10299 rows of 88 columns]
- `t` is a temporary variable used for assigning meaningful variable names to the ```matched_set```.  
[chr 1:88]
- `tidydata` is the final dataset containing the data from `matched_set` that is grouped and summarized based on mean.  
[180 rows of 88 columns]

---
