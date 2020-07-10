### Summary

* [Applications of Machine Learning](#applications-of-machine-learning)
* [Difference between AI, ML and DL](#difference-between-ai-ml-and-dl)
  * [Articial Intelligence](###artificial-intelligence)
  * [Machine Learning](###machine-learning)
  * [Deep Learning](###deep-learning)
* [Data Preprocessing](#data-preprocessing-in-python)
* [Regression](#regression)
  * [Simple Linear Regression](#simple-linear-regression)
  * [Multiple Linear Regression](#multiple-linear-regression)


# Applications of `Machine Learning`

Currently, almost everything we use is already using **Machine Learning (ML)** in some way, for example: whenever you post on **Facebook**, it already knows who your friends are in the photo and automatically tags them, this implies another application which is **Recognition Facial** that is being widely adopted. This is an example that almost everyone has seen, but we can mention others, such as: the **X-Box Kinect**, which analyzes your actions and reproduces them in the game you are playing and the name of the algorithm used in this scenario isc alled the **Forest Random**, we can also quote **Netflix** with it's system of recommendations for films and series, which learns from the informations provided, such as the time you spend watching a specific program, which were marked with like or deslike, **Virtual Stores** also use the Machine Learning **to offer new products** according to your consumption or visualizations, the keyboard of your SmartPhone learns while you type your messages or surveys, **Virtual Reality (VR)** glasses, Machine Learning is also use to save lives, helping to detect cancer and making new drugs, vaccines and other things that would take a long time if only humans wre analyzed.

I can cite many other examples, but I suggest paying close attention to the behavior of the tools you use on a daily basis and if you notice that it seems to know you very well or that it makes very accurate predictions, this will probably indicate that this tool is using Machine Learning in some part of it's functioning.

# Difference between AI, ML and DL

There is often a difficulty in understanding the differences between Artificial Intelligence (AI), Machine Learning (ML) and Deep Learning (DL). Terms that are not recent, but that have gained greater popularity in the last decade.

<p align="center">
  <img src=".github/difference_between_AI_ML_and_DL.png" alt="Difference between AI, ML and DL"/>
</p>
  
### **Artificial Intelligence:**

Artificial Intelligence is a term that was created in 1955 and that can be interpreted basically as the name suggests, that is, **the incorporation of human intelligence in machines**.

So, whenever a machine performs a task, which has been implemented with a set of instructions (algorithms), we call this "Intelligent" behavior Artificial Intelligence. There we can concluded that all machines that perform some tasks through algorithms are "equipped" with Artificial Intelligence. 

If it is still difficult to observe this, we can cite some examples very close to us, such as: our fridges, washing machines, SmartPhones, car or house alarms, among thousands of other devices that we use in our day today.

### **Machine Learning:**

Again, as the name suggests, it is the ability of machines to learn and we can interpret this as a way of instructing machines with teachings so that they can perform specific tasks.

We can do this by providing data so that the machine understands the patterns (training) and from there makes decisions based on what it has learned. It is like teaching certain taks to a child, you explain to him how to perform a certain task with examples (data), he performs that task several times to really learn (training) and, depending on this performance, you help him so that he can perform the task more efficiently (accurately).

### **Deep Learning:**

Deep Learning is a subset of the Machine Learning universe, we can interpret it as the next evolution of Machine Learning itself.

DL is inspired by the functioning of the human brain in relation to pattern processing.

Just as our brain identifies patterns and classifies them, Deep Learning algorithms are implemented to behave in the same way.

Comparing the functioning of Deep Learning and Machine Learning, we can see that while the DL can discover the features that must be applied in a classification, the ML needs that these features are provided manually.

# Data Preprocessing

In this stage of data Preprocessing, we will start a Notebook with the following approaches:

[Notebook code](https://github.com/Leonardofreua/Machine-Learning-A-Z-Python-and-R-in-Data-Science/blob/master/Data%20Preprocessing/Python/data_preprocessing_tools.ipynb) | [R code](https://github.com/Leonardofreua/Machine-Learning-A-Z-Python-and-R-in-Data-Science/blob/master/Data%20Preprocessing/R/data_preprocessing_template.r)

* Importing the Libraries
* Importing the Dataset
* Taking care of Missing Data:
  > We perform this procedure by taking the empty data and replacing it with the average.
* Enconding Categorical Data: 
  > Encoding is necessary at this point, because as there is no relationship between country names, we do not want an incorrect interpretation made by the model, which would causa inaccurate correlattions and consequently impact it's accuracy. So, the encoding methods applied here is **[One Hot Encoding](https://en.wikipedia.org/wiki/One-hot)** and to **Purchased** column we applied the **[Label Encoding](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.LabelEncoder.html)**.

  > *For more about encondig methods, see the following link:* [All about Categorical Variable Encoding](https://towardsdatascience.com/all-about-categorical-variable-encoding-305f3361fd02)<br />
  *For more about Categorial variable, see the following link:* [Categorical Variable](https://en.wikipedia.org/wiki/Categorical_variable)
* Spliting the dataset into the **Training set** and **Test Set**:
  > In this step, we apply the Feature Scaling after splitting the data set into two other sets, which are: **Testing** and **Training**. This is because the Test data set is composed of new data, which has not yet been observed. Therefore, these cannot be mixed with the Training data set.<br />
  > The use of any data from the Test suite before or during training is a potential bias in assessing performance.
* Feature Scalling:
  > Feature scaling is the process of scaling the values of features in a dataset so that they proportionally contribute to the distance calculation. The two most commonly used feature scaling techniques are Standardisation (or Z-Score Normalisation) and Min-Max scaling.
  
  > **Normalisation**: Is recommended when have a normal distribuition on most of your resources.
  
  <p align="center">
    <img src=".github/normalisation.png" alt="Normalisation"/>
  </p>

  > **Standardisation**: We use this approach in most situations, as it always provides good performance towards standard deviation.

  <p align="center">
    <img src=".github/standardisation.png" alt="Standarlisation"/>
  </p>

  **References:**<br />
  [Feature Scaling and Normalisation in a nutshell](https://medium.com/@giorgosmyrianthous/feature-scaling-and-normalisation-in-a-nutshell-5319af86f89b)<br />
  [Euclidian Distance](https://en.wikipedia.org/wiki/Euclidean_distance)

# Regression

## Simple Linear Regression

[Notebook code](https://github.com/Leonardofreua/Machine-Learning-A-Z-Python-and-R-in-Data-Science/blob/master/Regression/Simple%20Linear%20Regression/Python/simple_linear_regression.ipynb) | [R code](https://github.com/Leonardofreua/Machine-Learning-A-Z-Python-and-R-in-Data-Science/blob/master/Regression/Simple%20Linear%20Regression/R/simple_linear_regression.R)

---
**Topics covered:**

1 - Definition

2 - Aplication examples of SLR

3 - How to find the best fit line?

---

### Definition

*Is a statiscal method for obtaining a formula to predict values of one variable from another where there is a casual relationship between the two variables.*

Simple Linear Regression makes predictions of the **dependent variable (Y)** based on the value of the **independent variable (X)**.

 <p align="center">
  <img src=".github/simple_linear_regression.png" alt="Simple Linear Regression" width="450"/>
</p>

**Equation**:
<p align="center">
  <img src=".github/SLR_equation.png" alt="SLR Equation" width="400"/>

  <em>Font: [Simple linear regression Equation](https://rstudio-pubs-static.s3.amazonaws.com/401724_c38918314a8d479ab351f4f83a8fa284.html)</em>
</p>

> **Random Error term (ε)** is used to represent **Irreducible Errors**, some of which are inherent to the nature of the problem.

### Aplication examples

* Study how the parent's height may influence their children's height;
* Estimate thhe price of a house depending on it's surface;
* Predict the unemployment level for different ages;
* Approximate the grades attained in a subject as a function of the number of study hours per week;
* Forecast the execution time of a program depending on the speed of the processor.

### How to find the best fit line?

The center line represents the best fit line or the Simple Linear regression model. Then, the **Red Cross** marked in the image, represents a person who has for example: 10 years of experience and earns the US $ 100,000. Already, the **Green Cross** shows us where this person should be acordding to his experience. Therefore, the Green Line between the two crosses is the difference between what he is really earning and what he should be.

Now, to better adjust this line, add the values of the red and green cross, then square the result, and find the minimum, As depicted in the image:

 <p align="center">
  <img src=".github/find_the_best_fit_line.png" alt="How to find best fit line?" width="450"/>
</p>

**References**:<br />
[Simple linear regression](http://www.statstutor.ac.uk/resources/uploaded/slregression.pdf)<br />
[Statistics II - Lesson 4. Simple linear regression](http://halweb.uc3m.es/esp/Personal/personas/aarribas/eng/docs/estII/tema4_eng.pdf)

## Multiple Linear Regression

---
**Topics covered:**

1 - Definition

2 - Aplication examples of SLR

3 - Assumptions of multiple linear regression

4 - Dummy Variables

---

### Definition

*Multiple linear regression is used to estimate the relationship between two or more independent variables and one dependent variable.*

You can use multiple linear regression when you want to know:

* How strong the relationship is between two or more independent variables and one dependent variable (e.g. how rainfall, temperature, and amount of fertilizer added affect crop growth);
* The value of the dependent variable at a certain value of the independent variables (e.g. the expected yield of a crop at certain levels of rainfall, temperature, and fertilizer addition).

**Equation**:
<p align="center">
  <img src=".github/MLR_equation.png" alt="MLR Equation" width="400"/>
</p>

> * **y** = the predicted value of the dependent variable;
> * **B0** = the y-intercept (value of y when all other parameters are set to 0);
> * **B1*X1** = the regression coefficient (B1) of the first independent variable (X1) (a.k.a. the effect that increasing the value of the independent variable has on the predicted y value);
> * **…** = do the same for however many independent variables you are testing;
> * **Bn*Xn** = the regression coefficient of the last independent variable;
> * **ε** (could have) = model error (a.k.a. how much variation there is in our estimate of y).

### Aplication examples

* The selling price of a house can depend on the desirability of the location, the number of bedrooms, the number of bathrooms, the year the house was built, the square footage of the lot and a number of other factors;
* The height of a child can depend on the height of the mother, the height of the father, nutrition, and environmental factors.

### Assumptions of multiple linear regression

* **Homogeneity of variance (homoscedasticity)**: the size of the error in our prediction doesn’t change significantly across the values of the independent variable.

* **Independence of observations**: the observations in the dataset were collected using statistically valid methods, and there are no hidden relationships among variables.

  In multiple linear regression, it is possible that some of the independent variables are actually correlated with one another, so it is important to check these before developing the regression model. If two independent variables are too highly correlated (r2 > ~0.6), then only one of them should be used in the regression model.

* **Normality**: Multple regression assumes that the residuals are normally distributed.

<p align="center">
  <img src=".github/normality_assumption.png" alt="Normality Assumption" width="450"/>

  <em>Font: [Going Deeper into Regression Analysis with Assumptions, Plots & Solutions](https://www.analyticsvidhya.com/blog/2016/07/deeper-regression-analysis-assumptions-plots-solutions/)</em>
</p>

* **Linearity**: the line of best fit through the data points is a straight line, rather than a curve or some sort of grouping factor.

### Dummy Variables

To understand how dummy variables work, let's take into account the information below:

So basically the information that we have is the profit of each company or each startup and it's expenses with R&D, administration, marketing and the state in which it is located. Thus, on a given day, the Venture Capital fund wanted to know if there are any correlations between profit and the months spent in Administration, Marketing and R&D and also with the stage at which the company operates. They also want to predict profit, so profit is our dependent variable (**Green column**) and the rest of the columns (**Blue**) are all independent variables.

So, we need to do a Multiple Linear Regression to get those answers. Our equation will be formed according to the indicated values, as we can see below:

<p align="center">
  <img src=".github/dummy_variables_table.png" alt="Dummy Variables Table"/>
</p>

*Allocating values in the equation:*

<p align="center">
  <img src=".github/MLR_equation_2.png" alt="MLR Equation 2"/>
</p>

After allocating all values, we come across the **State** column, which refers to a type of the **categorical variable** and in order to be able to add it to our equation, we need to create **Dummy Variables**. 

To start the Dummy Variables creating, we need to through the State column and find all the different categories we have. In this case, we have **two**:

<p align="center">
  <img src=".github/dummy_variable_categories.png" alt="Dummy Variables Categories"/>
</p>

So for each category found, we need to create a new column for each one:

<p align="center">
  <img src=".github/dummy_variables_new_columns.png" alt="Dummy Variables New Columns"/>
</p>

In this way, we are **expanding** our dataset and here comes the fun part, in which we need to fill in these columns.

For that, we need to find all the lines where the state of **New York** is present and add the number **1** in the corresponding lines, in the others put **0**:

<p align="center">
  <img src=".github/dummy_variables_filled_1.png" alt="Dummy Variables Filled 1"/>
</p>

For **California**, we need to do **same thing**:

<p align="center">
  <img src=".github/dummy_variables_filled_2.png" alt="Dummy Variables Filled 2"/>
</p>

This way we finish our changes and our data set has these new columns that are called **Dummy Variables**.

Now it's easy to proceed with the construction of our Multiple Linear Regression model. Instead of using the old **States** column, we will use our new columns:

<p align="center">
  <img src=".github/dummy_variables_filled_3.png" alt="Dummy Variables Filled 3"/>
</p>

In fact, we will only need to use the **New York** column, as it already provides us with all the information we need, as it's enough to say immediately if the company is located in New York **(1)**, if it's not in California **(0)**. But it is important to note that **all information in the data set WILL BE PRESERVED**:

<p align="center">
  <img src=".github/dummy_variables_only_new_york.png" alt="Dummy Variables Only New York"/>
</p>

Finally, our euqation will look like this:

 <p align="center">
  <img src=".github/MLR_equation_3.png" alt="MLR Equation 3"/>
</p>

**References**:<br />
[An introduction to multiple linear regression](https://www.scribbr.com/statistics/multiple-linear-regression/)<br />
[Multiple Linear Regression](http://mezeylab.cb.bscb.cornell.edu/labmembers/documents/supplement%205%20-%20multiple%20regression.pdf)