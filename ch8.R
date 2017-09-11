#Linear Regression

#myfit = lm(formula, data)

data(women)
women
?women
#height	 numeric	 Height (in)
#weight	 numeric	 Weight (lbs)

# Linear Regreession

attach(women)
cov(height,weight)
cor(height,weight)
weight.lm = lm(weight ~ height, data=women)

weight.lm
summary(weight.lm)
plot(height, weight )
abline(weight.lm, col='red')

fitted(weight.lm)
lines(height, weight, col='blue')
lines(height, fitted(weight.lm), col='green')
cbind(height,weight, fitted(weight.lm))
cbind(height,weight, fitted(weight.lm), weight-fitted(weight.lm), residuals(weight.lm))

summary(residuals(weight.lm))
new.data = data.frame(height= 70)
new.data = data.frame(height=c(70,75,80))

predict(weight.lm, newdata = new.data, interval='confidence')
predict(weight.lm, newdata = new.data, interval='prediction')




# Polynomial Regression X2
weight.lm2 = lm(weight ~ height + I(height^2), data=women)
weight.lm2
summary(weight.lm2)
plot(women$height, women$weight, xlab='Height in inch', ylab='Weight in lbs')
lines(women$height, fitted(weight.lm2), col='purple', lwd=2)
text(mean(women$height)+5, mean(women$weight), 'Polynomial', col='purple', cex=.8)
lines(women$height, fitted(weight.lm), col='red', lwd=3)
text(mean(women$height)-5, mean(women$weight), 'Linear', col='red', cex=.6)

# higher polynomial
weight.lmn = lm(weight ~ height + I(height^2) + I(height^3), data=women)
summary(weight.lmn) # max residual errors reduced

# scatter plot for above data
library(car)
car::scatterplot(weight ~ height, data=women, spread=F, smoother.args= list(lty=2),
                 pch=19, main='Women age 30-39', xlab='Ht in inch', ylab='Wt in lbs' )

#http://www.dummies.com/programming/r/how-to-predict-new-data-values-with-r/



# Linear - Polynomial - Multiple Linear


# Eruptions

attach(faithful)     # attach the data frame 
eruption.lm = lm(eruptions ~ waiting)
summary(eruption.lm)
newdata = data.frame(waiting=c(80,90,100))
predict(eruption.lm, newdata) #, interval="confidence")
head(faithful)
faithful[waiting==80,]

#New Eg

#simple linear

attach(mtcars)
str(mtcars)
wt1=sort(wt)
mpg1=sort(mpg)
cars=c(wt1,mpg1)
cars.lm = lm(wt1 ~ mpg1, data=mtcars)
cars.lm
plot(wt1,mpg1)
abline(cars.lm, col='red')

fitted(cars.lm)
lines(mpg, wt, col='blue')
lines(mpg, fitted(cars.lm), col='green')
cbind(mpg, wt, fitted(cars.lm))
cbind(mpg, wt, fitted(cars.lm), wt-fitted(cars.lm), residuals(cars.lm))


summary(residuals(cars.lm))
new.data = data.frame(mpg= 70)
new.data = data.frame(mpg=c(70,75,80))

predict(cars.lm, newdata = new.data, interval='confidence')
predict(cars.lm, newdata = new.data, interval='prediction')

#polynomial

cars.lm2 = lm(mpg ~ wt + I(wt^2), data=mtcars)
cars.lm2
plot(wt,mpg)
abline(cars.lm2, col='red')

fitted(cars.lm)
lines(mpg, wt, col='blue')
lines(mpg, fitted(cars.lm), col='green')
cbind(mpg, wt, fitted(cars.lm))
cbind(mpg, wt, fitted(cars.lm), wt-fitted(cars.lm), residuals(cars.lm))

?lm
