# Getting and Cleaning Data Course Project
This repository hosts implementation of the course project for Getting and Cleaning Data module of Coursera Data Science Specialization.

The course project has been implemented on Windows 8.1 x64 with R version 3.2.3.

The repository hosts following files:
* assignment.txt - actual text of the course project assignment;
* tidy.txt - tidy dataset that is the result of the course project assignment;
* CodeBook.md - Code book describing the variables and the format of tidy.txt;
* run\_analysis.R - actual script that reads raw data and creates tidy dataset. Please refer to the inline comments in this file for more details;
* course-project.Rproj - RStudio project file.

For the details of the original dataset please refer to the links available at assignment.txt

## Reading tidy.txt file
To verify the assignment and load tidy.txt file one can use the following commands ( `View` works with RStudio):
```
test  <- read.csv("tidy.txt", sep = " ")
View(test)
```
