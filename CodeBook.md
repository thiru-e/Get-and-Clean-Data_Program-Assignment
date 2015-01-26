##### Code Book listing and describing variables in tidy data

**The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


* The following variables result from the analysis due to extraction of variables containing "mean" and "std"
	
	"Time.Body.Acc.Mean.X"           "Time.Body.Acc.Mean.Y"          
	"Time.Body.Acc.Mean.Z"           "Time.Body.Acc.Std.X"           
	"Time.Body.Acc.Std.Y"            "Time.Body.Acc.Std.Z"           
	"Time.Gravity.Acc.Mean.X"        "Time.Gravity.Acc.Mean.Y"       
	"Time.Gravity.Acc.Mean.Z"        "Time.Gravity.Acc.Std.X"        
	"Time.Gravity.Acc.Std.Y"         "Time.Gravity.Acc.Std.Z"        
	"Time.Body.AccJerk.Mean.X"       "Time.Body.AccJerk.Mean.Y"      
	"Time.Body.AccJerk.Mean.Z"       "Time.Body.AccJerk.Std.X"       
	"Time.Body.AccJerk.Std.Y"        "Time.Body.AccJerk.Std.Z"       
	"Time.Body.Gyro.Mean.X"          "Time.Body.Gyro.Mean.Y"         
	"Time.Body.Gyro.Mean.Z"          "Time.Body.Gyro.Std.X"          
	"Time.Body.Gyro.Std.Y"           "Time.Body.Gyro.Std.Z"          
	"Time.Body.GyroJerk.Mean.X"      "Time.Body.GyroJerk.Mean.Y"     
	"Time.Body.GyroJerk.Mean.Z"      "Time.Body.GyroJerk.Std.X"      
	"Time.Body.GyroJerk.Std.Y"       "Time.Body.GyroJerk.Std.Z"      
	"Time.Body.AccMag.Mean"          "Time.Body.AccMag.Std"          
	"Time.Gravity.AccMag.Mean"       "Time.Gravity.AccMag.Std"       
	"Time.Body.AccJerkMag.Mean"      "Time.Body.AccJerkMag.Std"      
	"Time.Body.GyroMag.Mean"         "Time.Body.GyroMag.Std"         
	"Time.Body.GyroJerkMag.Mean"     "Time.Body.GyroJerkMag.Std"     
	"Freq.Body.Acc.Mean.X"           "Freq.Body.Acc.Mean.Y"          
	"Freq.Body.Acc.Mean.Z"           "Freq.Body.Acc.Std.X"           
	"Freq.Body.Acc.Std.Y"            "Freq.Body.Acc.Std.Z"           
	"Freq.Body.Acc.MeanFreq-X"       "Freq.Body.Acc.MeanFreq-Y"      
	"Freq.Body.Acc.MeanFreq-Z"       "Freq.Body.AccJerk.Mean.X"      
	"Freq.Body.AccJerk.Mean.Y"       "Freq.Body.AccJerk.Mean.Z"      
	"Freq.Body.AccJerk.Std.X"        "Freq.Body.AccJerk.Std.Y"       
	"Freq.Body.AccJerk.Std.Z"        "Freq.Body.AccJerk.MeanFreq-X"  
	"Freq.Body.AccJerk.MeanFreq-Y"   "Freq.Body.AccJerk.MeanFreq-Z"  
	"Freq.Body.Gyro.Mean.X"          "Freq.Body.Gyro.Mean.Y"         
	"Freq.Body.Gyro.Mean.Z"          "Freq.Body.Gyro.Std.X"          
	"Freq.Body.Gyro.Std.Y"           "Freq.Body.Gyro.Std.Z"          
	"Freq.Body.Gyro.MeanFreq-X"      "Freq.Body.Gyro.MeanFreq-Y"     
	"Freq.Body.Gyro.MeanFreq-Z"      "Freq.Body.AccMag.Mean"         
	"Freq.Body.AccMag.Std"           "Freq.Body.AccMag.MeanFreq"     
	"Freq.Body.AccJerkMag.Mean"      "Freq.Body.AccJerkMag.Std"      
	"Freq.Body.AccJerkMag.MeanFreq"  "Freq.Body.GyroMag.Mean"        
	"Freq.Body.GyroMag.Std"          "Freq.Body.GyroMag.MeanFreq"    
	"Freq.Body.GyroJerkMag.Mean"     "Freq.Body.GyroJerkMag.Std"     
	"Freq.Body.GyroJerkMag.MeanFreq" "subject"   "ActType"      

NOTES:

** In addition to the mean and std variables originally provided in 'features.txt', variables representing 'activity' and 'subject' were added.

** The variables are normalized to be bounded [-1,1]. Hence no units are provided for the above variables. 	

**  The dimensions of 'tidy_dataset.txt' are 10299 X 81

**  The dimensions of 'tidy_mean.txt' are 180 X 3
	
**  The variable names are cleaned by applying the following rules:
	
	** tBody  Replaced with Time.Body
	** tGravity  Replaced with Time.Gravity
	** fBody  Replaced with Freq.Body
	** fGravity  Replaced with Freq.Gravity
	** -mean()- and -mean()  Replaced with .Mean
	** -std()-  and -std() Replaced with .Std
	** -meanFreq()-  Replaced with .MeanFreq
	** BodyBody Replaced with Body

