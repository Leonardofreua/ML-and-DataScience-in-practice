# Decision Tree Regression

# We don't need to apply the Feature Scalling, because the Decision Tree Regression 
# models are based on conditions in the variables that has nothing to do with 
# Euclidian distances.

# Importing the dataset
dataset = read.csv('../../../Datasets/Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting Decision Tree Regression to the dataset
# install.packages('rpart')
library(rpart)
regressor = rpart(formula = Salary ~ .,
                  data = dataset,
                  control = rpart.control(minsplit = 1))

# Predicting a new result
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Decision Tree Regression results
# install.packages('ggplot2')
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.01)
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Decision Tree Regression)') +
  xlab('Level') +
  ylab('Salary')