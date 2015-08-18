
##Getting and Cleaning Data Course Assignment


**Description of the data:**

Detailed information on the experiment:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original data available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Goal of the project: to clean and extract data from the data set zip, using an R script called run_analysis.R which would: 

    *Merge original data sets to create one. 
    *Extracts only the measurements on the mean and standard deviation for each measurement. 
    *Names the activities in the data set - Labels the data set with descriptive variable names. 
    *Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In this Repo:

    *run_analysis.R : the R-code run on the data set

    *dataAverage.txt : the clean data extracted from the original data using run_analysis.R

    *CodeBook.md : the CodeBook reference to the variables in Tidy.txt

    *README.md : the analysis of the code in run_analysis.R

##Preparation##

zip file available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
File downloaded and extracted in your machine is a requisite for executing the code.
**NOTE that the paths defined for each file direct to the working directory, which should be the same in which you extracted the data set. Otherwise, especify your path.**


**NO MODIFICATION** to the data previous to the decribed processing in R was done.

##System info and Libraries Used##

R version 3.2.1 (2015-06-18)

Platform: i386-w64-mingw32/i386 (32-bit)

Running under: Windows 7 (build 7601) Service Pack 1

Attached packages: data.table_1.9.4

##Description of the script##

[run_analysis.R](./run_analysis.R) performs the following:

1. Reads into R the dataset. Data set was composed of two directories: train and test, each one with three usable files: One containing subject lables, other whith the activity labels and a final with the variables measured.  
2. Combines the data set into one
3. Recodes colnames according to [features.txt](./features.txt) file. (In the data set)
4. Recodes the activity labels into the name of each activity according to :[activity_labels.txt](./activity_labels.txt). (In the data set)
5. Extracts the columns which contained means and standardt deviations measures from the data. 
6. Calculates an average value in every variable measured according to subject and activity performed, for each one of the variables, activity ans subject.
7. Creates a new tidy data set from the averaged data, i.e.: data produced in step 6. [dataAverage.txt](./Avg_data.txt)

##Step by step##

Though the code is very straight forward, the next is a brief description of the steps taken towards the final output.

1. Read the .txt files and then the data as tables. Extracted from [activity_labels.txt] the column with the names as a vector.

2. Combined using cbind() the tables from train in one table, and the files from test in other file. Using cbind(), combined both the prvious tables in one, and add column names to it throught colnames() function.

3. Using grep(), found indexes for the columns which contained the strings mean() and std(). Then subseted regularly with [], using the indexes found in the previous.

4. created a loop function to recode the column contaning the activity labels, into a column with activity names. 

5. Turned the strings "Acc" into "Accelerometer", "Mag" into "Magnitude", "Gyro", into "Gyroscope", to make the colnames more readable to the user.

6. Using {data.table}, calculated the mean for each variable, according to activity label and subject.

7. Wrote the new data set.

Final output **dim():[1] 180  88**

 
