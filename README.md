# GettingCleaningData_Project

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (**walking**, **walkingupstairs**, **walkingdownstairs**, **sitting**, **standing**, **laying**) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. Originally, the obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. However, the data was aggregated to obtain a tidy data set that summarizes the original by use of its mean.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. *See 'CodeBook.md' for more details.*

**For each record it is provided:**

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

**The dataset includes the following files:**

- 'README.md'

- 'CodeBook.md': Lists all features and shows information about the variables used on the feature vector. It also details the rationale underlying the tidy data. 

- 'run_analysis.R': An R script that transforms the raw data into tidy data, producing summary.txt as its output. 

- 'summary.txt': Tidy dataset.

**Notes:**
-Features are normalized and bounded within [-1,1].

```{r}
summary <- read.table("summary.txt", header=TRUE)
View(summary)
```
*For more information about this dataset contact: davissclark@gmail.com*