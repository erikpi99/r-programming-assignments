# r-programming-assignments
# Erik Pihl
# LIS4370 
# Repository for R Programming Assignments

# Module 2 Assignemnt 

# Original Version 

> assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
> 
> myMean <- function(assignment2) {
+   return(sum(assignment) / length(someData))
+ }
> 
> myMean(assignment2)
Error in myMean(assignment2) : object 'assignment' not found

# Corrected Version
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

myMean(assignment2)

[1] 19.25

Link to Blog: https://lis4273erikpihl.blogspot.com/2026/08/r-programming-journal-erik-pihl-module.html
