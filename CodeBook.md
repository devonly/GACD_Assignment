# DATA COOKBOOK #
*By: Devon Ly*
## Description ##
This is a code book that describes variables, the data, transformations and work performed to clean data

## Data Source ##
- Original data source: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- Full description from original site: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data Set Information ##
Obtained from the UCI website

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Original Data Set Files ##
The following files were list in the UCI HAR README.txt file
> 
> - 'README.txt'
> - 'features_info.txt': Shows information about the variables used on the feature vector.
> - 'features.txt': List of all features.
> - 'activity_labels.txt': Links the class labels with their activity name.
> - 'train/X\_train.txt': Training set.
> - 'train/y\_train.txt': Training labels.
> - 'test/X\_test.txt': Test set.
> - 'test/y\_test.txt': Test labels.
> 
> The following files are available for the train and test data. Their descriptions are equivalent. 
> 
> - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
> 
> - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
> 
> - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
> 
> - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

# Variable & Unit Listing #
The tidy dataset, *tidy_data.txt* contains the following variables along with unit of measurements

- **subject\_id**
- **activity\_description**
- **Time\_Body\_Acceleration\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Gravity\_Acceleration\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Acceleration\_Jerk\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Time\_Body\_Gyroscope\_Jerk\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Mean\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Mean\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Mean\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_StdDev\_X** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_StdDev\_Y** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_StdDev\_Z** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Acceleration\_Jerk\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Jerk\_Magnitude\_Mean** : Normalized and bounded within [-1,1] Per Subject Activity
- **Frequency\_Body\_Gyroscope\_Jerk\_Magnitude\_StdDev** : Normalized and bounded within [-1,1] Per Subject Activity


# Transformation & Cleaning Procedure #

### Part 1 : Loading Data & Merging Datasets ###
1. Load the x, y & subject files for both test and train sets
2. Load the features and activity_types
3. Re-label column names
	1. The column names of the x dataset were label with the records from the features dataset
	2. subject tables column were changed to subject id
	3. activity type columns were changed to activity id and activitydescription
4. Merge dataset
	1. All test sets merged into the test master dataset
	2. All train sets merges into the train master dataset
	3. Combined both master datasets into a final master set
### Part 2 : Extract measures for means and standard deviations
5. Removed all columns except for those which
	- identifiers
	- means
	- standard deviations

### Part 3 : Relabel activity names to be descriptive ###
6. Cross referenced the activity id in the final master table with the activity type table to merge in the activity description

### Part 4: Relabel variable names to be descriptive ###
7. Relabelled all columns so they were easy to read
	- Using underscores to seperate words
	- replaced t prefixes with time
	- replace f prefix with freq
	- Expanded abbreviated names such as "Mag" to "Magnitude"
	- Replaced word double ups such as "BodyBody"

### Part 5: Produce a tidy data set of means by subject and activty ###
8. Produced a tidy data set by
 - Melting the final master table keeping the subject and activity and splitting the remaining columns into singular rows with values
 - applying dcast to reconstruct the table but also applying the mean function to aggregate values by subject and activity
9. Writes a text file with the tidy data

## How to use run\_analysis.R ##
- If you do not already have the reshape2 package, you will need to install it with the command
	- install.packages("reshape2")
- Download the datasets from d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip the file into your working directory
	- The files should be placed into a sub folder called _UCI HAR Dataset_
- Copy run\_analysis.R into your working directory
- Run the R script