# BACKWARD ELIMINATION demonstration

# -- STEP 1 --

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

# -- STEP 2 --

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Building the optimal model using Backward Elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = training_set)

# -- STEP 3 --

# This command is executed to look for the independent variable that has the
# HIGHEST P-Value
summary(regressor)

# -- STEP 4 --

# Removing the State, as it has the HIGHEST Statistical Significance (Highest P-Value)
# ---- 6% (the limit is 5%) ----
# State2  0.974 
# State3  0.954
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, 
               data = training_set)
summary(regressor)

# Removing the Administration, as it has the HIGHEST Statistical Significance (Highest P-Value)
# ---- 6% (the limit is 5%) ----
# Administration  0.609
regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend, 
               data = training_set)
summary(regressor)

# Removing the Marketing Spend, as it has the HIGHEST Statistical Significance (Highest P-Value)
# ---- 7% (the limit is 5%) ----
# Marketing.Spend 0.0713
regressor = lm(formula = Profit ~ R.D.Spend,data = training_set)
summary(regressor)

# --- FINAL OUTPUT ---
# Coefficients:
#              Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 4.902e+04  2.748e+03   17.84   <2e-16 ***
# R.D.Spend   8.563e-01  3.357e-02   25.51   <2e-16 ***
