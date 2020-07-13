# Multiple Linear Regression

# Importing the dataset
dataset = read.csv('../../../Datasets/50_Startups.csv')

# Encoding Categorical data
dataset$State = factor(dataset$State,
                         levels = c('New York', 'California', 'Florida'),
                         labels = c(1, 2, 3))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Multiple Linear Regression to the Training set
# . (dot) = R.D.Spend + Administration + Marketing.Spend + State
regressor = lm(formula = Profit ~ ., data = training_set)