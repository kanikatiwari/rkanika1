install.packages("VIM")
install.packages("mice")

y=c(1,2,3,NA)
is.na(y)
#load the dataset
data(sleep, package="VIM")
sleep
#list all the rows not having missing values
sleep[complete.cases(sleep),]
#list of rows having oe or more than one missing values
sleep[!complete.cases(sleep),]

sum(is.na(sleep$Dream))
mean(!complete.cases(sleep))
library(mice)
data(sleep, package="VIM")
md.pattern(sleep)

#Exploring missing data visually
library(VIM)
aggr(sleep, prop=F,numbers=T)
aggr(sleep, prop=T,numbers=T)
matrixplot(sleep)
marginplot(sleep[c("Gest","Dream")], pch=c(20), col=c("cyan4","red","blue"))
cor(sleep)
x=as.data.frame(abs(is.na(sleep)))
x
str(sleep)
?aggr
sleep[!complete.cases(sleep),]
x=is.na(sleep)
library(mice)
rowsum(is.na(sleep[!complete.cases(sleep),]))
md.pattern(sleep)
sum(is.na(sleep))

library(VIM)
aggr(sleep, prop=F, numbers=T)
aggr(sleep, prop=T, numbers=T)
(is.na(sleep))
abs(is.na(sleep))
class(abs(is.na(sleep)))
x=as.data.frame(abs(is.na(sleep)))
x
apply(x,2,sum)
apply(x,1,sum)
nrow((sleep))
y=x[which(apply(x,2,sum)>0)]
y
cor(y)
cor(sleep,y,use="pairwise.complete.obs")
