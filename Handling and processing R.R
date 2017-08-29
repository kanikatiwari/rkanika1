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
library(stringr)

# total number of a's
str_count(states, "a")

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

#Matrices

# matrix with numbers and characters
rbind(1:5, letters[1:5])

R1=1:5
R2=letters[1:5]

rbind(R1,R2)
rbind(R1,R2, deparse.level=0)
rbind(R1,R2, deparse.level=1)

#DataFrames

# data frame with numbers and characters
df1 = data.frame(numbers = 1:5, letters = letters[1:5])
df1

cbind(df1,R1)

# examine the data frame structure
str(df1)

# data frame with numbers and characters
df2 = data.frame(numbers = 1:5, letters = letters[1:5],
                 stringsAsFactors = FALSE)
df2
str(df2)

##Lists

# list with elements of different mode
list(1:5, letters[1:5], rnorm(5))

##Reading tables

#Functions to read files in tabular format
#Function      Description
#read.table()  main function to read file in table format
#read.csv()    reads csv files separated by a comma ","
#read.csv2()   reads csv files separated by a semicolon ";"
#read.delim()  reads files separated by tabs "\t"
#read.delim2() similar to read.delim()
#read.fwf()    read fixed width format file

# abc radio stations data URL
abc = "http://www.abc.net.au/local/data/public/stations/abc-local-radio.csv"

# read data from URL
radio = read.table(abc, header = TRUE, sep = ",", stringsAsFactors = FALSE)

# size of table in 'radio'
dim(radio)

# structure of columns
str(radio, vec.len = 1)

#Reading raw text-readLines()

# read 'ktop100.txt' file
top105 = readLines("http://www.textfiles.com/music/ktop100.txt")

# how many lines
length(top105)

# inspecting first elements
head(top105)

# inspecting last 10 elements
tail(top105, n = 10)

#The versatile paste() function

# paste
PI = paste("The life of", pi)
PI

# paste
IloveR = paste("I", "love", "R", sep = "-")

ABC=paste("u", "are","awesome")
ABC

abc=c("u","are","awesome")
abc

?rbind

# paste with objects of different lengths
paste("X", 1:5, sep = ".")

#collapse argument

# paste with collapsing
paste(1:3, c("!", "?", "+"), sep = "", collapse = "")

# paste without collapsing
paste(1:3, c("!", "?", "+"), sep = "")





