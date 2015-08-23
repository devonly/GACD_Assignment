#-------------------------------------------------------------------
# DESCRIPTION :
# Refer to README.md for full details
# Full description of steps taken found within CodeBook.md (or you can read the comments below)
#
# ADDTIONAL PACKAGES USED:
# reshape2
#
# OUTPUT :
# text file > tidy_data.txt
#
# WRITTEN BY:
# DEVON LY
#-------------------------------------------------------------------

#/ <LOAD REQUIRED PACKAGES>

# [1. Merge the training and the test sets to create one data set.]

#/ <LOAD DATASET>
library(reshape2)

#. Assumes you have files in your working directory,
#. Under a sub directory called "UCI HAR Dataset"

#. Load common datasets
FEATURES       <- read.table('./UCI HAR Dataset/features.txt',           header = FALSE) # Load features which we will use for headings in the X data sets
ACTIVITY_TYPE  <- read.table('./UCI HAR Dataset/activity_labels.txt',    header = FALSE) # Load the reference table for activities
#. Load test datasets
TEST_X         <- read.table('./UCI HAR Dataset/test/x_test.txt',        header = FALSE)
TEST_Y         <- read.table('./UCI HAR Dataset/test/y_test.txt',        header = FALSE)
TEST_SUBJECT   <- read.table('./UCI HAR Dataset/test/subject_test.txt',  header = FALSE)
#. Load training datasets
TRAIN_X        <- read.table('./UCI HAR Dataset/train/x_train.txt',      header = FALSE)
TRAIN_Y        <- read.table('./UCI HAR Dataset/train/y_train.txt',      header = FALSE)
TRAIN_SUBJECT  <- read.table('./UCI HAR Dataset/train/subject_train.txt',header = FALSE)


#/ <RELABEL COLUMN NAMES>
colnames(TEST_X)         <- FEATURES[,2]     # Use the second column in the feature set to label the test x dataset
colnames(TRAIN_X)        <- FEATURES[,2]     # Use the second column in the feature set to label the train x dataset
colnames(TEST_SUBJECT)   <- c("subject_id")  # Give the subject data a descriptive name
colnames(TRAIN_SUBJECT)  <- c("subject_id")  # Give the subject data a descriptive name
colnames(TEST_Y)         <- c("activity_id") # Relabel the Y dataset so we actual knows it's the activity id
colnames(TRAIN_Y)        <- c("activity_id") # Relabel the Y dataset so we actual knows it's the activity id
colnames(ACTIVITY_TYPE)  <- c("activity_id", "activity_description") # Relabel the activity_type data set as id and description

#/ <MERGE DATASETS>

#. As data order in varying sets is not "messed" up we can do straight column binding in master tables
TEST_MASTER     <- cbind(TEST_Y,  TEST_SUBJECT,  TEST_X)          # Column bind the data, the subject id and the activity id
TRAIN_MASTER    <- cbind(TRAIN_Y, TRAIN_SUBJECT, TRAIN_X)         # Column bind the data, the subject id and the activity id

rm(TEST_Y, TEST_SUBJECT, TEST_X, TRAIN_Y, TRAIN_SUBJECT, TRAIN_X) # Remove unused variables and free up memory
FINAL_MASTER    <- rbind(TEST_MASTER, TRAIN_MASTER)               # Perform row binding and combine the master tables vertically
rm(TEST_MASTER, TRAIN_MASTER, FEATURES)                           # Remove the original master tables and features and free up more memory

# [2.Extracts only the measurements on the mean and standard deviation for each measurement.]

#/ EXTRACT REQUIRED FIELDS
COLUMN_NAMES   <- colnames(FINAL_MASTER)                      # Store the column names in variable so we can do some fancy searching on it
COL_TO_KEEP    <- grep(                                       # Produce a verctor with the column index where it contains the text "id","mean" and "std"
                        "id|mean\\(|std\\(",                  # We search for id to keep our activity and subject id
                        COLUMN_NAMES,                         # Further we escape the ( bracket so that we exclude headings like meanFreq(
                        ignore.case = TRUE
                      )     
                                                              
FINAL_MASTER   <- FINAL_MASTER[,COL_TO_KEEP]

# [3. Uses descriptive activity names to name the activities in the data set]

#/ <LABEL ACTIVITY NAMES>
#. Incorporate the activity names into our master set,
#. by cross referencing the activity_id and finding the matches
FINAL_MASTER   <- merge(
                          FINAL_MASTER,        # Merge into the FINAL_MASTER dataframe
                          ACTIVITY_TYPE,       # Merge columns from ACTIVITY_TYPE dataframe    
                          by='activity_id',    # Find matches where both have the same activity_id
                          all.x=TRUE           # Keep everything in FINAL_MASTER even if it doesn't have a match
                       )
rm(COL_TO_KEEP, COLUMN_NAMES)                  # Remove as many variables as possible, now that everything is merge and joined
gc()                                           # EVoke the garbage collector

# [4.Appropriately labels the data set with descriptive variable names.]

#/ <LABEL VARIABLE NAMES>

COLUMN_NAMES   <- colnames(FINAL_MASTER)                                  # Copy the column names into a variable


#. Use a ton of regular expression to substitute text
COLUMN_NAMES   <- gsub("\\()"     ,""               , COLUMN_NAMES)
COLUMN_NAMES   <- gsub("std"      ,"StdDev"         , COLUMN_NAMES)        
COLUMN_NAMES   <- gsub("mean"     ,"Mean"           , COLUMN_NAMES)        
COLUMN_NAMES   <- gsub("\\-"      ,"_"              , COLUMN_NAMES)       # I just prefer underscores
COLUMN_NAMES   <- gsub("^(t)"     ,"Time_"          , COLUMN_NAMES)       # Relabel all the t prefixes to time
COLUMN_NAMES   <- gsub("^(f)"     ,"Frequency_"     , COLUMN_NAMES)       # Relabel all the f prefixes to indicate Frequency
COLUMN_NAMES   <- gsub("Acc"      ,"_Acceleration"  , COLUMN_NAMES)       
COLUMN_NAMES   <- gsub("Gyro"     ,"_Gyroscope"     , COLUMN_NAMES)       
COLUMN_NAMES   <- gsub("Jerk"     ,"_Jerk"          , COLUMN_NAMES)       
COLUMN_NAMES   <- gsub("Mag"      ,"_Magnitude"     , COLUMN_NAMES)       
COLUMN_NAMES   <- gsub("BodyBody" ,"Body"           , COLUMN_NAMES)       # Why does the data even have BodyBody as a label?

colnames(FINAL_MASTER) <- COLUMN_NAMES     # OVerwrite the column names with our new labels
rm(COLUMN_NAMES)                           # You know what this does by now right? Yep removes a variable

# [5.From the data set in step 4, creates a second,
#    independent tidy data set with the average of each variable for each activity and each subject]

#/ <PRODUCE A SUMMARY TABLE>

#. Tricky one, found it easier to reshape the data by melting it first
ID_COLUMNS   <- c("subject_id", "activity_id", "activity_description")            # store the identificaiton headings
DATA_COLUMNS <- setdiff(colnames(FINAL_MASTER), ID_COLUMNS)                       # store all other heading EXCEPT the ones above
MOLTEN_DATA  <- melt(FINAL_MASTER, id = ID_COLUMNS, measure.vars = DATA_COLUMNS)  # melt the data keeping the ID_COLUMNS intact and splitting the other column and their values into rows
TIDY_DATA    <- dcast( data = MOLTEN_DATA,                                        # reshape the molten data back into expected shape with 
                       formula = subject_id + activity_description ~ variable,    # one variable per column
                       fun.aggregate = mean)                                      # and we apply mean while we are at it

#/ <OUTPUT TIDY DATa TO FILE>
write.table(TIDY_DATA, file = "./tidy_data.txt", row.names = FALSE)               # Write tidy data to a text file in the working directory


#/ <CLEAN UP WORK SPACE>
rm(list=ls())  # Remove all variables
gc()           # Garbage collect
