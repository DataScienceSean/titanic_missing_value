# Springboard Titanic Missing Values Assignment

# Using the following Packages
# readxl, tidyverse, tidyr, and dplyr

library(readxl)
library(tidyverse)
library(tidyr)
library(dplyr)


# Task 0: Load into R Studio

#reading the Excel File
titanic_dt <- read_excel("titanic3.xls")

#Writing the data to a CSV file
write.csv(titanic_dt, file = "titanic_original.csv")

#Turning the data into a Dataframe
titanic_df <- data.frame(titanic_dt)
head(titanic_df)

# Task 1: Port of embarkation - Replace Missing Values with S

# WHat and how many missing values are there?
count(titanic_df, embarked)

titanic_df$embarked  <- ifelse(is.na(titanic_df$embarked), "S", titanic_df$embarked)

# Task 2: Age - replace missing values with the mean age of the population

round(mean(titanic_df$age, na.rm=TRUE),0)

# The mean returned was 30
titanic_df$age  <- ifelse(is.na(titanic_df$age), 30, titanic_df$age)

# Task 3: Lifeboat - Many passangers did not make it to lifeboats. Replace missing values with "NONE"
titanic_df$boat  <- ifelse(is.na(titanic_df$boat), "NONE", titanic_df$boat)

# Task 4: Cabin Number - Create new Column has_cabin_number
titanic_df <- mutate(titanic_df, has_cabin_number = ifelse(is.na(titanic_df$cabin), 0, 1))

# Task 5: Submit Project to Github
write.csv(titanic_df, file = "titanic_clean.csv")
