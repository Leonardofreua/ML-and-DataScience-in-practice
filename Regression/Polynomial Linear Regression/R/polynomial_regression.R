# Polynomial Regression

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
poly_reg = lm(formula = Salary ~ .,
              data = dataset)