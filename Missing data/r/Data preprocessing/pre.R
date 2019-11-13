# Data Preprocessing
#install xlsx packag to to read excel file
install.packages("xlsx")
# Importing the dataset
dataset = read.csv('2006.csv')
library(xlsx)

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) median(x, na.rm = TRUE)),
                        dataset$Salary)

