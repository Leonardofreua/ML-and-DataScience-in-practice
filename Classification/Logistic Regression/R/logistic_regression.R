# Logistic Regression

# Importing the dataset
dataset = read.csv('../../../Datasets/Social_Network_Ads.csv')

# Splitting the dataset into the Training set and Test set
# install.packages('caTools)
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
training_set[, 1:2] = scale(training_set[, 1:2])
test_set[, 1:2] = scale(test_set[, 1:2])