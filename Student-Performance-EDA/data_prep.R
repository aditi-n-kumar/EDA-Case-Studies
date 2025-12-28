# data_prep.R
# clean and prepare the student dataset

library(dplyr)
library(readr)

# read the data
df <- read.csv("student-mat.csv", sep = ";")

# look at the data
str(df)

# turn character columns into factors
df$school <- as.factor(df$school)
df$sex <- as.factor(df$sex)
df$address <- as.factor(df$address)
df$famsize <- as.factor(df$famsize)
df$Pstatus <- as.factor(df$Pstatus)
df$Mjob <- as.factor(df$Mjob)
df$Fjob <- as.factor(df$Fjob)
df$reason <- as.factor(df$reason)
df$guardian <- as.factor(df$guardian)
df$schoolsup <- as.factor(df$schoolsup)
df$famsup <- as.factor(df$famsup)
df$paid <- as.factor(df$paid)
df$activities <- as.factor(df$activities)
df$nursery <- as.factor(df$nursery)
df$higher <- as.factor(df$higher)
df$internet <- as.factor(df$internet)
df$romantic <- as.factor(df$romantic)

# make a new column for the average of the three grades
df$avg_grade <- (df$G1 + df$G2 + df$G3) / 3

# save the cleaned data
saveRDS(df, "student_clean.rds")
