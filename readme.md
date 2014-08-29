Summary
=======

run_analysis.R is a script which cleans the Samsung data. It performs the following actions.


Details
=======

* Reads in the test data and training data from x_test.txt and x_train.txt
* Reads in the activities from y_test.txt and y_train.txt
* Reads in the subject IDs from subject_test.txt and subject_train.txt
* Clips all of this data together into a single data frame
* Calculates the mean of each column, excluding the subject and activity columns
* Creates a data frame where each row is a single subject performing a single activity and the columns are the means of the measurements taken
* Eliminates any columns obviously not measuring mean or standard deviation
* Cleans the column names so that they contain no special characters and all lower case
* Writes the results to cleaner.txt

Note: I have included all columns which have any indication they are measurements of mean or standard
deviation. As the original data was not described other than with the column names, I have elected 
to include any and all columns which look as though they may be relevant. The user should check with 
the original author of the data if more clarification is necessary.
