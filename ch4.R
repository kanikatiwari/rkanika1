manager= c(1,2,3,4,5)
date=c("10/24/08","10/28/08","10/01/08","10/12/08","10/12/09")
country=c("US","US","UK","UK","UK")
gender=c("M","F","F","M","F")
age=c(32,45,25,39,99)
q1=c(5,3,3,3,2)
q2=c(4,5,5,3,2)
q3=c(5,2,5,4,1)
q4=c(5,5,5,NA,2)
q5=c(5,5,2,NA,1)

leadership=data.frame(manager,date,country,gender,q1,q2,q3,q4,q5, stringsAsFactors = F)
str(leadership)
'??modulus'
x=c(1,2,3,4,5,6)
y=c(2,3,4,5,6,7)
x+y
x/y
?x%%y
