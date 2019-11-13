# Multiple Linear Regression

# Importing the dataset
dataset = read.csv('fdata.csv')
dataset = dataset[grep("Urad", dataset$Crop, ignore.case=T),]
dataset = dataset[,c("Area","Avg_temp","Rainfall","Humidity","Soil","Production")]

# Encoding categorical data
dataset$Soil = factor(dataset$Soil,
                      levels = c('RED AND YELLOW SOIL&RED SOIL', 'BLACK SOIL &RED SOIL',
                                 'ALLUVIAL SOIL & LITERITE SOIL & SALINE SOIL',
                                 'LITERITE SOIL & RED SOIL & RED AND BLACK SOIL',
                                 'ALLUVIAL SOIL  & LITERITE SOIL &SALINE SOIL',
                                 'SALINE SOIL & LITERITE SOIL & ALLUVIAL SOIL',
                                 'ALLUVIAL SOIL  & LITERITE SOIL & BLACK',
                                 'RED SOIL & RED AND YELLOW SOIL', 'RED SOIL & LITERITE SOIL',
                                 'LITERITE SOIL & BROWN FOREST',
                                 'ALLUVIAL SOIL & BLACK & BROWN FOREST & SALINE SOIL',
                                 'ALLUVIAL SOIL & LITERITE SOIL', 'ALLUVIAL SOIL & SALINE SOIL',
                                 'ALLUVIAL SOIL & LITERITE SOIL & RED SOIL', 'RED SOIL',
                                 'RED SOIL & LITERITE SOIL & ALLUVIAL SOIL',
                                 'ALLUVIAL SOIL & BLACK& RED SOIL', 'BLACK SOIL  & RED SOIL',
                                 'RED AND BLACK SOIL & RED AND YELLOW SOIL',
                                 'RED SOIL & BLACK SOIL & BROWN FOREST',
                                 'RED SOIL & LITERITE SOIL & RED AND YELLOW SOIL'),
                      labels = c(1, 2, 3, 4, 5, 6, 7 , 8, 9, 10, 11, 12 , 13, 14 ,15, 16, 17, 18, 19, 20, 21))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Production, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
#training_set = scale(training_set)
#test_set = scale(test_set)

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Production ~ .,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Other useful functions 
coefficients(regressor) # model coefficients
confint(regressor, level=0.95) # CIs for model parameters 
fitted(regressor) # predicted values
residuals(regressor) # residuals
anova(regressor) # anova table 
vcov(regressor) # covariance matrix for model parameters 
influence(regressor) # regression diagnostics


# Building the optimal model using Backward Elimination
regressor = lm(formula = Production ~ Area + Avg_temp + Rainfall + Humidity + Soil,
               data = dataset)
summary(regressor)

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(regressor)

# Plot matrix of all variables.
newdata = training_set[,c(1:6)]
summary(newdata)
plot(newdata, pch=16, col="blue", main="Matrix Scatterplot of Area,Avg_teap,Rainfall,Humidity,Soil and productio")


