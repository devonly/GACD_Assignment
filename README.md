# ABOUT #
The files relate to the Coursera "Getting and Cleaning Data" course project and application of instructions by
*Devon Ly*

# FILES #

- README.md - This awesome text file
- CodeBook.md - A descriptive text describe the data used and procedures to transform and clean data
- run\_analysis.R - The R code to perform transformation and cleaning
- tidy_data.txt - An output of the above script with relabelled variables and data aggregate as a mean by subject and activity

# COURSE PROJECT DETAILS #
The instructions for the project were as follows
> 
> You should create one R script called run_analysis.R that does the following.
> 
> - Merges the training and the test sets to create one data set.
> - Extracts only the measurements on the mean and standard deviation for each measurement.
> - Uses descriptive activity names to name the activities in the data set
> - Appropriately labels the data set with descriptive activity names.
> - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to use run\_analysis.R ##
- If you do not already have the reshape2 package, you will need to install it with the command
	- `install.packages("reshape2")`
- Download the datasets from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- Unzip the file into your working directory
	- The files should be placed into a sub folder called **UCI HAR Dataset**
- Copy **run\_analysis.R** into your working directory
- Run the R script
	- `source("./run_analysis.R")`

## How to load tidy\_data.txt
- Place **tidy\_data.txt** file into your working directory
- Load the data with following command
	- `TIDY_DATA  <- read.table('./tidy_data.txt')`