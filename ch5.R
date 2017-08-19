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


# for loop

for ( i in 1:10) print(paste('hello', i))

for ( i in c(1,5,10)) print(paste('hello', i))

i = 0
while (i < 10){ print(paste('Hula ', i)) ; i = i+1 }

i = 3
if ( i > 5) print ('i > 5') else print('i < 5')

ifelse(score > .5, print('Passed'), print('Failed'))

feelings = c('sad', 'afraid','happy')

for (i in feelings) 
  print (
    switch (i,
       happy = 'I am happy',
       afraid = ' I am afraid',
       sad = 'cheer up'
       )
  )


head(USArrests)

# names of states
states = rownames(USArrests)

# substr
substr(x = states, start = 1, stop = 4)

# abbreviate state names
states2 = abbreviate(states)

# remove vector names (for convenience)
names(states2) = NULL
states2

# abbreviate state names with 5 letters
abbreviate(states, minlength = 5)

#Getting the longest name

# size (in characters) of each name
state_chars = nchar(states)
state_chars

# longest name
states[which(state_chars == max(state_chars))]

#Selecting States

# get states names with 'k'
grep(pattern = "k", x = states, value = TRUE)

# get states names with 'b'
grep(pattern = "b", x = states, value = TRUE)

# get states names with 'w'
grep(pattern = "w", x = states, value = TRUE)

# get states names with 'w' or 'W'
grep(pattern = "[wW]", x = states, value = TRUE)

#convert the state names to lower case
x = tolower(states)
x

#convert to upper case
x = toupper(states)
x

#specify the argument ignore.case=TRUE

# get states names with 'w'
grep(pattern = "w", x = states, value = TRUE, ignore.case = FALSE)

# histogram
hist(nchar(states), main = "Histogram",
     xlab = "number of characters in US State names")

#distribution of the vowels in the names of the States
#regexpr()

# position of a's
positions_a = gregexpr(pattern = "a", text = states, ignore.case = TRUE)
positions_a

# how many a's?
num_a = sapply(positions_a, function(x) ifelse(x[1] > 0, length(x), 0))
num_a

#using the function ; str count() from the package "stringr

# load stringr (remember to install it first)
#library(stringr)

# total number of a's
#str_count(states, "a")

# vector of vowels
vowels = c("a", "e", "i", "o", "u")
# vector for storing results
num_vowels = vector(mode = "integer", length = 5)
str(num_vowels)

#Empty string

# empty string
empty_str = ""

# display
empty_str

# class
class(empty_str)

#Empty character vector

# empty character vector
empty_chr = character(0)

# display
empty_chr

# class
class(empty_chr)

##Notice that the empty string empty str has length 1, 
##while the empty character vector empty chr has length 0.

# character vector with 5 empty strings
char_vector = character(5)

# display
char_vector

char_vector[1]="First"
length(char_vector)
char_vector[2]="Second"
char_vector[3]="Third"
char_vector[4]="Fourth"
