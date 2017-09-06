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
