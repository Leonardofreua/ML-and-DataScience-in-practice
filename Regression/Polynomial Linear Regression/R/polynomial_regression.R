# Polynomial Regression

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

# Fitting Linear Regression to the dataset

# Executing the summary() function, we can see that
# level column has a Statiscal Significance of two stars
#
# Level  0.00383 **
lin_reg = lm(formula = Salary ~ .,
             data = dataset)

# Fitting Polynomial Regression to the dataset
dataset$Level2 = dataset$Level^2
dataset$Level3 = dataset$Level^3
dataset$Level4 = dataset$Level^4
poly_reg = lm(formula = Salary ~ .,
              data = dataset)

# Visualising the Linear Regression results
# installed.packages('ggplot2')
  library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(lin_reg, newdata = dataset)),
           colour = 'blue') +
  ggtitle('Truth or Bluff (Linear Regression)') +
  xlab('Level') +
  ylab('Salary')

# Visualising the Polynomial Regression results
  ggplot() +
    geom_point(aes(x = dataset$Level, y = dataset$Salary),
               colour = 'red') +
    geom_line(aes(x = dataset$Level, y = predict(poly_reg, newdata = dataset)),
              colour = 'blue') +
    ggtitle('Truth or Bluff (Polynomial Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  # Predicting a new result with Linear Regression
  y_pred = predict(lin_reg, data.frame(Level = 6.5))
  
  # --- OUTPUT ---
  # y_pred = 3303379
  
  # Predicting a new result with Polynomial Regression
  y_pred = predict(poly_reg, data.frame(Level = 6.5,
                                        Level2 = 6.5^2,
                                        Level3 = 6.5^3,
                                        Level4 = 6.5^4))
  # --- OUTPUT ---
  # y_pred = 158862