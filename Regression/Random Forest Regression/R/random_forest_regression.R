# Random Forest Regression

# -------------------------------------------------------------
#                                                             |
# A job seeker is asking for the same amount he received at   |
# his last job and he said that this figure is 160K a year.   |
# So, to improve our negotiation, we will apply the model     |
# below to check if he is telling the truth or bluffing.      |    
#                                                             |
# -------------------------------------------------------------

# Importing the dataset
dataset = read.csv('../../../Datasets/Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting Random Forest Regression to the dataset
# install.packages('randomForest')
library(randomForest)
set.seed(1234)
# Suggestion: Perform some tests by changing the ntree parameter and observe the
# result of y_pred and the changes present in the graph.
regressor = randomForest(x = dataset[1],
                         y = dataset$Salary,
                         ntree = 500)

# Predicting a new result
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the Random Forest Regression results (for higher resolution and smoother curve)
# install.packages('ggplot2')
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.01)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Random Forest Regression)') +
  xlab('Level') +
  ylab('Salary')