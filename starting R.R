#help-start
help()
#assigning values to a variable
x=23
#getting result
x
#command to generate random nos. for normal distribution
rnorm(n, mean=0,sd=1)
rnorm(n=5, mean=0, sd=1)
rnorm(10)
#how to load a file for workspace
load(file.choose("mymba.csv"))
#read file
read.csv(file="wip.csv")
df= readxl_example("wip.xlsx")
?read_xlsx
library(xlsx)
df= read.xlsx("wip.xlsx",1)
df
x = c(1,2,3)
x2= c(3,4,5)
x+x2
x *x2
x / x2
x %% x2
x%/%x2
x
y = x
y
x[x>2] = NA
x
is.na(x)
na.omit(x)
fix(df)
names(df)
names(df)[3] = 'high3'
names(df)
names(df)[1:3] = c('1','c2','c3')
names(df)
is.na(x)
sum(x)
x
sum(na.omit(x))
sum(x, na.rm=T)
mydates = as.Date('2007-06-22')
mydates
class(mydates)
Sys.Date()
format(Sys.Date(), '%d %m %y   %Y')
dob= as.Date('1993-01-07')
difftime(Sys.Date(), dob, units='months')
as.character(dob)
is.numeric(dob)
is.Date(dob)
is.numeric(x)
sort(x)
sort(x, decreasing =T)
?sort
df
str(df)
dhiraj = df$low + df$close
dhiraj
cbind(df,dhiraj)
