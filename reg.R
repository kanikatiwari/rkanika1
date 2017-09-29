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