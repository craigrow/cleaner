## Read in the two data files.
test <- read.table("./dataset/test/x_test.txt")
train <- read.table("./dataset/train/x_train.txt")

## Read in the files which identify the activities
a_test <- read.table("./dataset/test/y_test.txt")
a_train <- read.table("./dataset/train/y_train.txt")

## Read in the files which identify the subjects
s_test <- read.table("./dataset/test/subject_test.txt")
s_train <- read.table("./dataset/train/subject_train.txt")

## Clip together the data
c_test <- data.frame(cbind(s_test, a_test, test))
c_train <- data.frame(cbind(s_train, a_train, train))
data <- data.frame(rbind(c_test, c_train))

## Read in the feature.txt file which we'll use for column headings.
features <- read.table("./dataset/features.txt")
feat_list <- features[,2]

## Put the column names on the data
require(stringr)
old_cols <- names(data)
new_cols <- c("subject", "activity", as.character(feat_list))
names(data) <- str_replace(string = names(data), pattern = old_cols, replacement = new_cols)

## Identify the columns we want.
names <- names(data)
names <- grep("[Mm]ean()|[Ss][Tt][Dd]", names)
names <- c(1, 2, names)

## Trim the data frame to only the columns we want.
data <- data[,c(names)]

## Clean up column names. TODO: remove other special chars.
names(data) <- tolower(names(data))
names(data) <- gsub("\\.", "", names(data))
names(data) <- gsub("\\-", "", names(data))
names(data) <- gsub("\\(", "", names(data))
names(data) <- gsub("\\)", "", names(data))

## Setup an empty data frame for the data we'll output
out <- data.frame()

## Setup a while loop to process each subject
while (nrow(data) != 0) {
  ## Find the first subject
  sub <- data[1,1]
  
  ## Subset to the first subject
  s_data <- subset(data, data[,1] == sub)
  
  ## Setup a while loop to process each activity
  while (nrow(s_data) != 0) {
    ## Find the first activity
    act <- s_data[1,2]
    a_data <- subset(s_data, s_data[,2] == act)
    
    ## Find the means of each column
    means <- apply(a_data, 2, mean)
    
    ## Add the data to the output frame
    out <- rbind(out, means)
    
    ## Remove the processed data from the s_data
    s_data <- subset(s_data, s_data[,2] != act)
  }
  
  ## Remove the processed data from the "data" data frame
  data <- subset(data, data[,1] != sub)
}

## Fix the column names
old_cols <- names(out)
new_cols <- names(data)
names(out) <- str_replace(string = names(out), pattern = old_cols, replacement = new_cols)

## Replace activity IDs with descriptive names
rows <- nrow(out)
row <- 1
while (row < rows) {
  if (out[row,2] == 1) {out[row,2] <- "walking"}
  if (out[row,2] == 2) {out[row,2] <- "walkingupstairs"}
  if (out[row,2] == 3) {out[row,2] <- "walkingdownstairs"}
  if (out[row,2] == 4) {out[row,2] <- "sitting"}
  if (out[row,2] == 5) {out[row,2] <- "standing"}
  if (out[row,2] == 6) {out[row,2] <- "laying"}
  row <- row + 1
}
