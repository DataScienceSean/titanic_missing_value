# Sipringboard Titanic Missing Values Assignment

# Using the following Packages
# readxl, tidyverse, devtools

library(readxl)
library(tidyverse)

#reading the Excel File
titanic_dt <- read_excel("titanic3.xls")
titanic_dt

#Writing the data to a CSV file
write.csv(titanic_dt, file = "titanic_original.csv")

#Turning the data into a Dataframe
titanic_DF <- data.fram(titanic_dt)
