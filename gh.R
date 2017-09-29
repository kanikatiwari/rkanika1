x=c(1,2,3,4,2,3,6,8)
y=c(3,4,3,6,9,7,9,4)

boxplot(y~x)
dotplot(x)
?dotplot
plot(y~x)
plot(y,x)
library(ggplot2)
qplot(x, y)
stem(x)

regmodel=lm(y~x)
summary(regmodel)
anova(regmodel)
plot(regmodel)
fits=regmodel$fitted 
Resids=regmodel$residuals
cars

