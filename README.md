# Get-and-Clean-Data_Program-Assignment
_______________________________________________________________________________________________________________________________________________________


## This file describes the process and approach for the assignmnet submitted part of "Getting and Cleaning Data" Coursework

** The submittals are uploaded on a repository called "Get-and-Clean-Data_Program-Assignment" and a link is provided.

	The submittals include the following files:

	*  README.md - Describes the content and process of the assignment

	*  CodeBook.md - Describes the several variables in the dataset

	*  run_analysis.R - Provides the code to clean the data and analyze it

	*  tidy_dataset.txt - Provides cleaned data that follows the three clean data rules (mentioned below)

	*  tidy_mean.txt - Provides the output of the analysis that includes average of each variable for each activity and each subject 

---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------

The following steps were followed during this assignment process:

	*  Downloaded data from -  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	*  The files 'subject_test.txt', 'X_test.txt', 'Y_test.txt' were copied from 'test' folder into main folder 'UCI HAR Dataset'

	*  The files 'subject_train.txt', 'X_train.txt', 'y_train.txt' were copied from 'train' folder into main folder 'UCI HAR Dataset'

	*  The following steps were followed in the R Code:

	# Step 1
		*  The files X_test.txt, Y_test, subject_test.txt were read into R and combined together into a table called 'testDB'
			
		*  The files X_train.txt, y_train, subject_train.txt were read into R and combined together into a table called 'trainDB'
	
		*  The two tables 'testDB' and 'trainDB' are combined together into a table called 'totalDB'.

		*  The table 'features.txt' was called into table 'coltemp' and the contents are assigned to variable names in 'totalDB'.

		*  The variables added due to 'Y_test' and 'subject' are called 'activity' and 'subject', respectively.

	# Step 2
	
		*  Created a table called 'totalDB3' with information about variables containing 'mean' and 'std deviation' 
		
	# Step 3
		
		*  The types of activities were read from 'activity_labels.txt'
		
		*  The values from activity_labels.txt were matched with column containing 'activity' and result activity is stored in a variable called 'ActType'

		*  The original column ' activity' is deleted from the 'totalDB3'

	# Step 4	
		
		*  The variable names were relabeled applying the following rules and obtaied Tidy Data.
			
			** tBody  Replaced with Time.Body
			** tGravity  Replaced with Time.Gravity
			** fBody  Replaced with Freq.Body
			** fGravity  Replaced with Freq.Gravity
			** -mean()- and -mean()  Replaced with .Mean
			** -std()-  and -std() Replaced with .Std
			** -meanFreq()-  Replaced with .MeanFreq
			** BodyBody Replaced with Body
	# Step 5	
		
		*  Tidy Data is melted using variables 'subject' and 'ActType'

		*  Average of variables was calculated 

		*  The tidy data was saved in a file called 'tidy_dataset.txt'
		
		*  The means of variables was saved in a file called 'tidy_mean.txt'.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

Notes: 
1. 	The dimensions of 'tidy_dataset.txt' are 10299 X 81
2.	The dimensions of 'tidy_mean.txt' are 180 X 3
3.	The tidy data follows the three following principles - 
		* Each variable forms a column.
		* Each observation forms a row
		* Each type of observational unit forms a table

		

