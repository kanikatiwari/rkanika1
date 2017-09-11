#ch7
attach(mtcars)
str(mtcars)
detach(mtcars)

(m=mtcars[,c("mpg","gear","hp")])
(w=mtcars[,c("wt","cyl","carb")])
cor(m,w)
cov(m,w)
plot(cor(m,w))
attach(mtcars)
mpg;wt
cbind(mpg,wt)
cov(mpg,wt)
cov(wt, mpg)

cor(mpg,wt)
cor(wt, mpg)

plot(mpg,wt, ylim=c(0,8))
lmfit = lm(wt~mpg,data=mtcars)
summary(lmfit)
abline(h=6.0473)
abline(lm(wt~mpg,data=mtcars))

?lm
?abline

Input = ("
Volume   Pitch 
         1760    529 
         2040    566
         2440    473
         2550    461
         2730    465
         2740    532
         3010    484
         3080    527
         3370    488
         3740    485
         4910    478
         5090    434
         5090    468
         5380    449
         5850    425
         6730    389
         6990    421
         7960    416
         ")
Data = read.table(textConnection(Input),header=TRUE)
Data
summary(Data)
cor.test( ~ Pitch + Volume, 
          data=Data,
          method = "spearman",
          continuity = FALSE,
          conf.level = 0.95)
cor(Data$Volume,Data$Pitch, method="spearman")
cor(Data$Volume,Data$Pitch, method="kendall")
cor(Data$Volume,Data$Pitch, method="pearson")
?cor

x=c(6,8,12,15,18,20,24,28,31)
y=c(10,12,15,15,18,25,22,26,28)
cov(x,y)
cor(x,y)
(x1=x-mean(x))
(y1=y-mean(y))
(x1y1=x1*y1)
(cov1=sum(x1y1)/(length(x)-1))
cov(x,y)
cov(x,y)/(sd(x)*sd(y))
cor(x,y)
cbind(x,y,x1,c=x1^2,y1,d=y1^2,x1y1)
apply(cbind(x,y,x1,x1^2,y1,y1^2,x1y1), 2,sum)
colSums(cbind(x,y,x1,c=x1^2,y1,d=y1^2,x1y1))

rank(x)
x
cbind(x,rank(-x))
?rank

x=c(4,5,6,7,8,9,10,11,12,13,14,15)
y=c(78,72,66,60,54,48,42,36,30,24,18,12)
plot(x,y)
cov(x,y)     
(m=c(x-mean(x)))
(l=c(y-mean(y)))
(d=m*l)
a=sum(d)/c(length(x)-1)
a

x=c(3,5,6,7,4)
y=c(8,6,5,4,7)
c=y*x
plot(x,y)
cov(x,y)     
(m=c(x-mean(x)))
(l=c(y-mean(y)))
(d=m*l)
a=sum(d)/c(length(x)-1)
a

#Karl Pearson's coefficient of correlation
#1. 

x=c(3,5,6,7,4)
y=c(8,6,5,4,7)
c=y*x
plot(x,y)
cov(x,y)     
(m=c(x-mean(x)))
(l=c(y-mean(y)))
(d=m*l)
a=sum(d)/c(length(x)-1)
sdx= sd(x)
sdy=sd(y)
(r=a/(sdx*sdy))
r
cor(x,y, method="pearson")

#2. 

x=c(3,5,6,7,4)
y=c(8,6,5,4,7)
x1=c(x-mean(x))
y1=c(y-mean(y))
l=sum(x*x)
m=sum(y*y)
n=sum(x1*y1)
o=sqrt(l*m)
r=n/o
r
cor(x,y)

#3.

#a=c(100,102,104,107,105,112,103,99)
#b=c(15,12,13,11,12,12,19,26)
#a1=c(a-mean(a))
#b1=c(b-mean(b))
#c=sum(a1*a1)
#d=sum(b1*b1)
#e=sum(a1*b1)
#f=sqrt(c*d)
#r=e/f
#r

#4.

a=c(9,11,13,12,10,9,6,10)
b=c(4,8,13,11,9,6,4,9)
c=c(a-mean(a))
d=c(b-mean(b))
e=sum(a*a)
f=sum(b*b)
g=sum(c*d)
h=sqrt(e*f)
r=g/h
r

