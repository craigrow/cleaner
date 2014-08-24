## Read in the feature.txt file which I'll use later for column headings.
features <- read.table("./dataset/features.txt")
feat_list <- features[,2]

## Read in the two data files.
x_test <- read.table("./dataset/test/x_test.txt")
x_train <- read.table("./dataset/train/x_train.txt")

## Read in the files which identify the activities
y_test <- read.table("./dataset/test/y_test.txt")
y_train <- read.table("./dataset/train/y_train.txt")


## Combine the data frames into one via rbind.
test_complete <- data.frame(cbind(y_test, x_test))
train_complete <- data.frame(cbind(y_train, x_train))
output <- data.frame(rbind(test_complete, train_complete))

## Put column names on the data.
require(stringr)
old_cols <- names(output)
new_cols <- c("Subject", as.character(feat_list))
names(output) <- str_replace(string=names(output), pattern = old_cols, replacement = new_cols)

## Identify the columns we want.
names <- names(output)
onames <- grep("[Mm]ean()|[Ss][Tt][Dd]", names)
onames <- c(1, onames)

## Short_output is the data frame with only the columns we want.
short_output <- output[,c(onames)]

## Create a data frame for each subject.

## Calculate the mean of each variable in each dataframe.

## Create a dataset that has the average of each variable for each activity for each subject

## Putting this together...
## In x_train we have 7,352 observations.
## Each obs. has 561 measurements.
## The measurements are defined in features.txt which defined 561 vars.
## The subject_train has 7,352.
## So, if you cbind that with x_train you can see which subject each obs is from.
## Not sure we care which subject it's from though.

## So for steps #1 and #2, merge x_train and x_test into one data frame.
## Then extract the vars which have 'mean' or 'std' in their names to a new data frame.
## Label the columns in the data frame appropriately.
