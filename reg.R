#Cars
cars
str(cars)
head(cars)
mtcars
#Scatter Plot
scatter.smooth(x=mtcars$mpg, y=mtcars$carb, main="carb ~ mpg")
#BoxPlot 
par(mfrow=c(1, 2))
boxplot(mtcars$mpg, main="mpg", sub=paste("Outlier rows: ", boxplot.stats(mtcars$mpg)$out))
boxplot(mtcars$carb, main="carb", sub=paste("Outlier rows: ", boxplot.stats(mtcars$carb)$out))
par(mfrow=c(1, 1))

#Density plot
library(e1071)
par(mfrow=c(1, 2))  # divide graph area in 2 columns
plot(density(mtcars$mpg), main="Density Plot: miles per gallon", ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(mtcars$mpg), 2)))
polygon(density(mtcars$mpg), col="red")
plot(density(mtcars$carb), main="Density Plot: carborators", ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(mtcars$carb), 2)))
polygon(density(mtcars$carb), col="red")

#Correlation

cor(mtcars$mpg, mtcars$carb)
#result= there is an low relationship btwn mpg and carb as the correaltion is negative ane near to 0 representing that mpg is unexplained by the carb

#Build Linear Model
#The lm() function 
#relationship between the predictor and response
linearMod= lm(carb ~ mpg, data=mtcars)
#predictor-mpg, response-carb
print(linearMod)

#Linear Regression Diagnostics
summary(linearMod)

#The p Value: Checking for statistical significance
#p-Value (bottom last line) and the p-Value of individual predictor variables (extreme right column under ‘Coefficients’)

#Predicting Linear Models
# Create Training and Test data 
set.seed(100)
trainingRowIndex = sample(1:nrow(mtcars), 0.8*nrow(mtcars)) 
trainingData = mtcars[trainingRowIndex, ]
testData  = mtcars[-trainingRowIndex, ]

str(mtcars)
cor(mtcars$mpg,mtcars$carb)

#Develop the model on the training data and use it to predict the distance on test data
lmMod = lm(mpg ~ carb, data=trainingData)
(mpgPred = predict(lmMod, testData))
summary(lmMod)

#Calculate prediction accuracy and error rates
(actuals_preds = data.frame(cbind(actuals=testData$mpg, predicteds=mpgPred)))
(correlation_accuracy = cor(actuals_preds))
head(actuals_preds)

#calculate the Min Max accuracy and MAPE: 

(min_max_accuracy = mean(apply(actuals_preds, 1, min) / apply(actuals_preds, 1, max)) )
(mape = mean(abs((actuals_preds$predicteds - actuals_preds$actuals))/actuals_preds$actuals))
?abs
