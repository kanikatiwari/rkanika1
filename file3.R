mtcars
?mtcars
plot(mtcars$mpg,mtcars$disp)
str(mtcars)
plot(mtcars$carb,mtcars$hp)
boxplot(mtcars)
attach(mtcars)
ls()
search()
mpg
plot(mpg,disp)
detach(mtcars)
mpg

mba=read.csv(file='mba.csv')
mba
str(mba)
mba2=data.frame(mba$rollno,mba$name, mba$gender, mba$course, mba$mobile)
mba2
summary(mba2)

wipro
str(wipro)
mode(wipro)
wipro2=read.csv(file='wipro.csv')
wipro2
mode(wipro2)
str(wipro2)
class(wipro2)
names(wipro2)
head(wipro2)
tail(wipro2)
fix(wipro2)

attach(mtcars)
plot(wt, mpg, xlab="weightt", ylab="miles per gallon", type="b")
abline(lm(mpg~wt))
title("Regression of mpg on weight")
?

library(RColorBrewer)
n=7
mycolors= brewer.pal(n,"Set1")
barplot(rep(1,n), col=mycolors)

n=10
mycolors=rainbow(n)
pie(rep(1,n), labels=mycolors, col=mycolors)
mygrays=gray(0:n/n)
pie(rep(1,n),labels=mygrays, col=mygrays)
rep(1,5)
rep(c(1,3),8)
rep(8,6)

#Table 3.1  : Patient Response to drugs
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type='b')   # x on plots and joins them b - lines & points

plot(dose, drugA, type="s", lty=3, lwd=2, pch=23, cex=1, col='brown')
title('My first Graph')
