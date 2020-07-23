# Support Vector Regression

# -------------------------------------------------------------
#                         SCENARIO                            |
#                                                             |
# A job seeker is asking for the same amount he received at   |
# his last job and he said that this figure is 160K a year.   |
# So, to improve our negotiation, we will apply the model     |
# below to check if he is telling the truth or bluffing.      |    
#                                                             |
# -------------------------------------------------------------

# -------------------------------------------------------------
#                        OBSERVATION                          |
#                                                             |
# As our dataset has only 10 records, we won't create a test  |
# division, we will only have a single set to be trained.     |
#                                                             |
# -------------------------------------------------------------

# Importing the dataset
dataset = read.csv('../../../Datasets/Position_Salaries.csv')
dataset = dataset[2:3]

# Fitting the SVR to the dataset
# install.packages('e1071')
library(e1071)
regressor = svm(formula = Salary ~ .,
                data = dataset,
                type = 'eps-regression')

# Predicting a new result
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualising the SVR results
# install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(regressor, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Truth or Bluff (SVR)') +
  xlab('Level') +
  ylab('Salary')
