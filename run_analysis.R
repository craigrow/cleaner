## Read in the feature.txt file which I'll use later for column headings.
features <- read.table("./dataset/features.txt")
feat_list <- features[,2]

## Read in the two data files.
x_test <- read.table("./dataset/test/x_test.txt")
x_train <- read.table("./dataset/train/x_train.txt")

## Read in the files which identify the activities
y_test <- read.table("./dataset/test/y_test.txt")
y_train <- read.table("./dataset/train/y_train.txt")

## Read in the files which identify the subjects
s_test <- read.table("./dataset/test/subject_test.txt")
s_train <- read.table("./dataset/train/subject_train.txt")

## Replace activity IDs with descriptive names
a_test <- as.character(y_test$V1)

a_test <- gsub("1", "walking", a_test)
a_test <- gsub("2", "walkingupstairs", a_test)
a_test <- gsub("3", "walkingdownstairs", a_test)
a_test <- gsub("4", "sitting", a_test)
a_test <- gsub("5", "standing", a_test)
a_test <- gsub("6", "laying", a_test)

a_train <- as.character(y_train$V1)

a_train <- gsub("1", "walking", a_train)
a_train <- gsub("2", "walkingupstairs", a_train)
a_train <- gsub("3", "walkingdownstairs", a_train)
a_train <- gsub("4", "sitting", a_train)
a_train <- gsub("5", "standing", a_train)
a_train <- gsub("6", "laying", a_train)

## Combine the data frames into one via rbind
test_complete <- data.frame(cbind(s_test, a_test, x_test))
train_complete <- data.frame(cbind(s_train, a_train, x_train))

## Put the column names on the data
require(stringr)
old_cols_train <- names(train_complete)
old_cols_test <- names(test_complete)
new_cols <- c("subject", "activity", as.character(feat_list))
names(train_complete) <- str_replace(string = names(train_complete), pattern = old_cols_train, replacement = new_cols)
names(test_complete) <- str_replace(string = names(test_complete), pattern = old_cols_test, replacement = new_cols)

## Put the two data frames together
output <- data.frame(rbind(test_complete, train_complete))

## Identify the columns we want.
names <- names(output)
onames <- grep("[Mm]ean()|[Ss][Tt][Dd]", names)
onames <- c(1, 2, onames)

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
