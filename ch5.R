#Chapter 5- Advanced Data Management

##Mathematical functions

#Absolute Value
abs(-5)

#Square Root
sqrt(25)
sqrt(c(4, 16, 8))

#Smallest integer not graeter than x
ceiling(3.475)

#Greatest integer not graeter than x
floor(3.475)

#Integer formed by truncating values in x towards 0
trunc(5.99)

#Roundinng of valkue of X with a specified decimal point
round(5.67892, digit=2)

#Roundinng of valkue of X with a significant digit
signif(5.67892, digit=2)

#cos, sin, tan
cos(4)
sin(3)
tan(5)

#arc cos, arc sin, arc tan
acos(-0.416)
asin(-0.4)
atan(5)

#hyperbolic cos, sin, tan
cosh(-0.416)
sinh(-0.4)
tanh(5)

#logritm of x to the  base n
log(4)
log10(7)
log(10,base=3)

#Exponential fundtion
exp(5)

##Statistical Function

#Mean
mean(c(3,4,5,6,7))

#Median
median(c(1,2,3,4,5,7))

#Standard Deviation
sd(c(1,2,3,4,5))

#Variance
var(c(1,2,3,4,5,6,7,9))

#Median absolute deviation
mad(c(1,2,3,4,9,10))

#quantile
quantile(7,)

#Range
x=c(1,2,3,4,5,6)
range(x)
diff(range(x))

#Sum
sum(c(5,6,7,8,9,11,23))

#difference
x=c(1,2,3,4,5,6)
diff(x, lag=1)

#Minimum
x=c(4,6,2,6,7,10,1)
min(x)

#Maximun
x=c(4,6,2,6,7,10,1)
max(x)

#Scale-Standardise

##Propability Functions

#beta
?beta

#binomial
?binom 
      
##Character Function

#counting no. of characters
a="poonam"
nchar(a)

#substring
x="abcdefghi"
substr(x,3,5)

grep("A",c("A",B,"C"))
     
summary(rnorm(5))
?rnorm
set.seed(1234)
mean(rnorm(5))
sd(rnorm(5))
?pretty
pretty(c(0,10),4)
substr('kanika',5,6)
grep('a', 'kanika', fixed=T)
?grep
sub('a','x','kanika')
strsplit('kanika tiwari', '')
paste('c',1:10,sep='-')
x = c(1.3,4.5,5.5, 6, 7.8)
cut(x,2)
y = c(1, 2, 3, 2, 4)
cut(y, 4)
cat(x,y,x)
c(x,y)
head(mtcars)
apply(mtcars, 2, FUN=mean)



options(digits=2)
Student <- c("John Davis", "Angela Williams", "Bullwinkle Moose",
             "David Jones", "Janice Markhammer", "Cheryl Cushing",
             "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student, Math, Science, English,
                     stringsAsFactors=FALSE)
roster
z = scale(roster[, 2:4])
z
score = apply(z, 1, mean)
roster2 = cbind(roster, score)
roster2 
y = quantile(score, c(.8,.6,.4, .2))
y
y[1]
sort(score)
roster2$grade[score >= y[1]] = 'A'
roster2
roster2$grade[score < y[1] & score >=y[2]] = 'B'
roster2
roster2$grade[score < y[2] & score >=y[3]] = 'C'
roster2
roster2$grade[score < y[3] & score >=y[4]] = 'D'
roster2

roster2$grade[score < y[4] ] = 'F'
roster2
name = strsplit(roster2$Student, ' ')
name
?sapply
Lastname = sapply(name, '[', 2)
Firstname = sapply(name,'[',  1)
roster2 = cbind(Firstname, Lastname, roster2)
roster2
roster2 = roster2[,-3]
roster2

roster3 = roster2[order(roster2$Firstname), ]
roster3



myname = 'Dhiraj Upadhyaya Sharma'
mn2 = strsplit(myname, ' ')
sapply(mn2, '[',1)
lname

grade
# for loop

for ( i in 1:10) print(paste('hello', i))

for ( i in c(1,5,10)) print(paste('hello', i))

i = 0
while (i < 10){ print(paste('Hello ', i)) ; i = i+1 }

i = 10
while (i > 0){ print('Hello') ; i = i-1 }

if ( i > 5) print ('hi') else print('bye')

i = 6
ifelse(i>5, print('Passed'), print('Failed'))

feelings = c('sad', 'afraid','happy')

for (i in feelings) 
  print (
    switch (i,
       happy = 'I am happy',
       afraid = ' I am afraid',
       sad = 'cheer up'
       )
  )
#mystats=function(x, parameteric=T, Print=F)

set.seed(1234)
x=rnorm(500)
y=mystats(x)
y$center
y$spread

#Transposing
mtcars
cars=mtcars[1:5,1:4]
cars
t(cars)

#Aggregating Data

options(digit=3)

attach(mtcars)
aggdata=aggregate(mtcars, by=list(cyl,gear), FUN=mean, na.rm=TRUE)
aggdata

#Reshape2

ID=c(1,1,2,2)
Time=c(1,2,1,2)
X1=c(5,3,6,2)
X2=c(6,5,1,4)
mydata=data.frame(ID,Time,X1,X2, stringsAsFactors = F)
mydata

#Melting

library(reshape2)
md=melt(mydata,id=c("ID","Time"))
md

#casting- dcast

newdata=dcast(md,)

?IQR
?lm
