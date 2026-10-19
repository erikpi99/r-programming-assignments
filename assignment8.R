# Assignment 8 

student6 <- read.csv(file.choose(), stringsAsFactors = FALSE)

View(student6)

install.packages("plyr")
library(plyr)

gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

print(gender_mean)

write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)

file.exists("gender_mean.txt")

i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

file.exists("i_students.csv")

write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)

file.exists("i_students_full.csv")

file.exists("gender_mean.txt")
file.exists("i_students.csv")
file.exists("i_students_full.csv")


