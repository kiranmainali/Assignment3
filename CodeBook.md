

# Code Book
Summary of resulting data fields in `tidyData.txt`.

## Identifiers

 - `Subject` -  Test subject ID.
 - `Activity` - Activity type performed when the measurement was taken.
## Measurements


- TimeBodyAcclerometerMeanY
- TimeBodyAcclerometerMeanZ
- TimeBodyAcclerometerMeanX
- TimeGravityAcclerometerMeanX
- TimeGravityAcclerometerMeanY
- TimeGravityAcclerometerMeanZ
- TimeBodyAcclerometerJerkMeanX
- TimeBodyAcclerometerJerkMeanY
- TimeBodyAcclerometerJerkMeanZ
- TimeBodyGyroscopeMeanX
- TimeBodyGyroscopeMeanY
- TimeBodyGyroscopeMeanZ
- TimeBodyGyroscopeJerkMeanX
- TimeBodyGyroscopeJerkMeanY
- TimeBodyGyroscopeJerkMeanZ
- TimeBodyAcclerometerMagnitudeMean
- TimeGravityAcclerometerMagnitudeMean
- TimeBodyAcclerometerJerkMagnitudeMean
- TimeBodyGyroscopeMagnitudeMean
- TimeBodyGyroscopeJerkMagnitudeMean
- FrequencyBodyAcclerometerMeanX
- FrequencyBodyAcclerometerMeanY
- FrequencyBodyAcclerometerMeanZ
- FrequencyBodyAcclerometerMeanFrequencyX
- FrequencyBodyAcclerometerMeanFrequencyY
- FrequencyBodyAcclerometerMeanFrequencyZ
- FrequencyBodyAcclerometerJerkMeanX
- FrequencyBodyAcclerometerJerkMeanY
- FrequencyBodyAcclerometerJerkMeanZ
- FrequencyBodyAcclerometerJerkMeanFrequencyX
- FrequencyBodyAcclerometerJerkMeanFrequencyY
- FrequencyBodyAcclerometerJerkMeanFrequencyZ
- FrequencyBodyGyroscopeMeanX
- FrequencyBodyGyroscopeMeanY
- FrequencyBodyGyroscopeMeanZ
- FrequencyBodyGyroscopeMeanFrequencyX
- FrequencyBodyGyroscopeMeanFrequencyY
- FrequencyBodyGyroscopeMeanFrequencyZ
- FrequencyBodyAcclerometerMagnitudeMean
- FrequencyBodyAcclerometerMagnitudeMeanFrequency
- FrequencyBodyAcclerometerJerkMagnitudeMean
- FrequencyBodyAcclerometerJerkMagnitudeMeanFrequency
- FrequencyBodyGyroscopeMagnitudeMean
- FrequencyBodyGyroscopeJerkMagnitudeMean
- FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
- AngleTimeBodyAcclerometerMeanGravity
- AngleTimeBodyAcclerometerJerkMeanGravityMean
- AngleTimeBodyGyroscopeMeanGravityMean
- AngleTimeBodyGyroscopeJerkMeanGravityMean
- AngleXGravityMean
- AngleYGravityMean
- AngleZGravityMean
- TimeBodyAcclerometerSTDX
- TimeBodyAcclerometerSTDY
- TimeBodyAcclerometerSTDZ
- TimeGravityAcclerometerSTDX
- TimeGravityAcclerometerSTDY
- TimeGravityAcclerometerSTDZ
- TimeBodyAcclerometerJerkSTDX
- TimeBodyAcclerometerJerkSTDY
- TimeBodyAcclerometerJerkSTDZ
- TimeBodyGyroscopeSTDX
- TimeBodyGyroscopeSTDY
- TimeBodyGyroscopeSTDZ
- TimeBodyGyroscopeJerkSTDX
- TimeBodyGyroscopeJerkSTDY
- TimeBodyGyroscopeJerkSTDZ
- TimeBodyAcclerometerMagnitudeSTD
- TimeGravityAcclerometerMagnitudeSTD
- TimeBodyAcclerometerJerkMagnitudeSTD
- TimeBodyGyroscopeMagnitudeSTD
- TimeBodyGyroscopeJerkMagnitudeSTD
- FrequencyBodyAcclerometerSTDX
- FrequencyBodyAcclerometerSTDY
- FrequencyBodyAcclerometerSTDZ
- FrequencyBodyAcclerometerJerkSTDX
- FrequencyBodyAcclerometerMagnitudeSTD
- FrequencyBodyAcclerometerJerkSTDY
- FrequencyBodyAcclerometerJerkSTDZ
- FrequencyBodyGyroscopeSTDX
- FrequencyBodyGyroscopeJerkMagnitudeSTD
- FrequencyBodyGyroscopeSTDY
- FrequencyBodyGyroscopeSTDZ  
- FrequencyBodyAcclerometerJerkMagnitudeSTD  
- FrequencyBodyGyroscopeMagnitudeSTD
## Activity Lebels
Following are the activity labels during test was performed. Description dhows what subject was doing during the test. Numbers represents corresponding code used in row data ( which was used to ffactorize dat in `tidyData.txt`.
-   `WALKING`   -  `1`: subject was walking 
-   `WALKING_UPSTAIRS` - `2`: subject was walking up a staircase 
-   `WALKING_DOWNSTAIRS`  - `3`: subject was walking down a staircase 
-   `SITTING` - `4`: subject was sitting 
-   `STANDING`  - `5`: subject was standing 
-   `LAYING` - `6`: subject was laying down 
## Data Cleaning process
Please refer to `run_analysis.R` for detail process and steps in generating above Measurement names (In descriptive form).  Final output is of whole getting and cleaning data process `tidyData.txt` file. Steps are listed in `README.md`.


